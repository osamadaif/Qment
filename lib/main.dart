import 'package:flutter/material.dart';
import 'package:qment/layout/calculator_layout/calculator_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qment',
      home: QmentCalculatorApp(),
    );
  }
}



