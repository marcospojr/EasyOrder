import 'dart:convert';

import 'package:easy_order/services/get_options.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<GetOptions?> getOptions() async {
    final response =
        await http.get(Uri.parse('http://localhost:3000/product/all'));

    if (response.statusCode == 200) {
      final json = response.body;
      // var jsonResponse = json.decode(response.body);
      print("Funfou: $json");
      return getOptionsFromJson(json);
    } else {
      throw Exception('Failed to load data from the Internet');
    }
  }
}
