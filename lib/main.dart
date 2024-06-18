import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_eggg/getcontroller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',

        home: GetEg());
  }
}

class GetEg extends StatelessWidget {
  const GetEg({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      body: Center(
        child: Obx(() => Text("Clicks: ${c.count}")),
      ),
      floatingActionButton:
     FloatingActionButton(child: Icon(Icons.add), onPressed: (){
       c.increment();
     }),
    );
  }
}
