// import 'dart:convert';
//
// import 'package:getx_eggg/model/ProductModel.dart';
// import 'package:getx_eggg/model/Products.dart';
// import 'package:http/http.dart' as http;
//
// class ApiServices{
//   Future<List<Products>?>  fetchdata() async {
//
//     try{
//       final response=await http.get(Uri.parse('https://dummyjson.com/products'));
//       if(response.statusCode==200) {
//         var jsonn = jsonDecode(response.body);
//         var resp=ProductModel.fromJson(jsonn);
//         var list=resp.products;
//         return list;
//       }
//     }catch(e){
//       print("${e.toString()}");
//     }
//   }
// }
