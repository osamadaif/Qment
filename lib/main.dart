import 'package:flutter/material.dart';
import 'package:qment/app/app.dart';
import 'package:qment/shared/bindings.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  CalculatorBindings().dependencies();
  runApp(const MyApp());
}


