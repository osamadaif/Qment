import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qment/shared/bindings.dart';
import 'package:qment/view/calculator_layout/calculator_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qment',
      home: QmentCalculatorApp(),
      initialRoute: '/',
      initialBinding: CalculatorBindings(),
      // getPages: [
      //   // GetPage(name: '/history', page: page)
      // ],

    );
  }
}


