import 'package:easy_order/services/get_bill.dart';
import 'package:easy_order/services/get_options.dart';
import 'package:easy_order/services/post_bill.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<GetOptions?> getOptions() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/product/all'));

    if (response.statusCode == 200) {
      final json = response.body;
      return getOptionsFromJson(json);
    } else {
      throw Exception('Failed to load data from the Internet');
    }
  }

  Future<GetBill?> getBill() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/order/all'));

    if (response.statusCode == 200) {
      final json = response.body;
      return getBillFromJson(json);
    } else {
      throw Exception('Failed to load data from the Internet');
    }
  }

  Future<PostBill?> postBill() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/order/create'));

    if (response.statusCode == 200) {
      final json = response.body;
      return postBillFromJson(json);
    } else {
      throw Exception('Failed to load data from the Internet');
    }
  }
}
