import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vegapp/model/product_model.dart';

class  FetchUser{

  Future<Product> fetchAllProduct({String? query}) async {
    final response = await http.post(
        Uri.parse("http://gng.invatomarket.com/api/Product/homePage"),
        headers: {"apikey": "123"});

    if (response.statusCode == 200) {

      Product product = Product.fromJson(jsonDecode(response.body));


      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }

  }
}