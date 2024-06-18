import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_eggg/model/Products.dart';

import 'getcontroller.dart';

void main() {
  runApp(GetMaterialApp(home: ApiPage()));
}

class ApiPage extends StatelessWidget {
  ApiPage({super.key});

  final controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    controller.fetchproducts();
    return Scaffold(
      appBar: AppBar(title: Text("todos")),
      body: Obx(() {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.product.length,
            itemBuilder: (BuildContext context, int index) {
              Products st = controller.product[index];
              return Card(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        child: Column(
                          children: <Widget>[
                            Text('id: ${st.id}'),
                            Container(
                                width: MediaQuery.of(context).size.width - 100,
                                child: Text(
                                  'title: ${st.title}',
                                  maxLines: 3,
                                )),
                            Text('price: ${st.price}'),
                            Text('brand: ${st.brand}'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            });
      }),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_eggg/model/Products.dart';
// import 'getcontroller.dart';
//
// void main() {
//   runApp(GetMaterialApp(home: ApiPage()));
// }
//
// class ApiPage extends StatelessWidget {
//   ApiPage({super.key});
//
//   final controller = Get.put(ApiController());
//
//   @override
//   Widget build(BuildContext context) {
//     controller.fetchproducts();
//     return Scaffold(
//       appBar: AppBar(title: Text("Products")),
//       body: Obx(() {
//         if (controller.product.isEmpty) {
//           return Center(child: CircularProgressIndicator());
//         } else {
//           return ListView.builder(
//             shrinkWrap: true,
//             itemCount: controller.product.length,
//             itemBuilder: (BuildContext context, int index) {
//               Products st = controller.product[index];
//               return Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text('id: ${st.id}'),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width - 100,
//                         child: Text(
//                           'title: ${st.title}',
//                           maxLines: 3,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       Text('price: ${st.price}'),
//                       Text('brand: ${st.brand}'),
//                     ],
//                   ),
//                 ),
//               );
//             },
//           );
//         }
//       }),
//     );
//   }
// }
