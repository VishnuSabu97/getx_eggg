
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_eggg/apiservices.dart';
import 'dart:convert';

import 'package:getx_eggg/model/ProductModel.dart';
import 'package:getx_eggg/model/Products.dart';
import 'package:http/http.dart' as http;


class Controller extends GetxController {
  var count = 0.obs;
  increment() {
    count++;
    update();
  }
}

class ApiController extends GetxController{
  RxList<Products> product = <Products>[].obs;

  Future<List<Products>?> fetchproducts() async {
    final response = await http.get(Uri.parse("https://dummyjson.com/products"));
    if (response.statusCode == 200) {
      var jsonn = jsonDecode(response.body);
      var resp=ProductModel.fromJson(jsonn);
      var list=resp.products;
      if (list != null) {
        product.assignAll(list);
      }
    } else {
      throw Exception('Failed to load quotes');
    }
  }
}