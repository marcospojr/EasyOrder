import 'dart:convert';
import 'package:easy_order/services/get_bill.dart';
import 'package:easy_order/services/get_options.dart';
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
    final response = await http.get(Uri.parse(
        'http://localhost:3000/order/getProductsByOrderId/fdfdc28e-d376-4179-a382-e60b14b4178f'));

    if (response.statusCode == 200) {
      final json = response.body;
      return getBillFromJson(json);
    } else {
      throw Exception('Failed to load data from the Internet');
    }
  }

  Future<http.Response> addProduct(String productId) async {
    return http.post(
      Uri.parse('http://localhost:3000/order/insertProductsIntoOrder'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "orderId": "fdfdc28e-d376-4179-a382-e60b14b4178f",
        "products": [
          {"productId": productId, "quantity": 1}
        ]
      }),
    );
  }
}
