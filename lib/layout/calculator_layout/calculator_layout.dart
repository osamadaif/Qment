import 'package:flutter/material.dart';
import 'package:qment/presentation/resources/color_manager.dart';
import 'package:qment/shared/components/components.dart';

class QmentCalculatorApp extends StatefulWidget {
  const QmentCalculatorApp({Key? key}) : super(key: key);

  @override
  State<QmentCalculatorApp> createState() => _QmentCalculatorAppState();
}

class _QmentCalculatorAppState extends State<QmentCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.colorLight,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(color: Colors.red, child: Text('Result')),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10, right: 10),
              // height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonRounded(title : 'c', textColor: Colors.teal),
                    buttonRounded(title : '%', textColor: Colors.teal),
                    buttonRounded(icon: Icons.backspace_outlined, iconColor: Colors.teal),
                    buttonRounded(title : '÷', textColor: Colors.teal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonRounded(title : '7', textColor: Colors.black),
                    buttonRounded(title : '8', textColor: Colors.black),
                    buttonRounded(title : '9', textColor: Colors.black),
                    buttonRounded(title : '×', textColor: Colors.teal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonRounded(title : '4', textColor: Colors.black),
                    buttonRounded(title : '5', textColor: Colors.black),
                    buttonRounded(title : '6', textColor: Colors.black),
                    buttonRounded(title : '-', textColor: Colors.teal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonRounded(title : '1', textColor: Colors.black),
                    buttonRounded(title : '2', textColor: Colors.black),
                    buttonRounded(title : '3', textColor: Colors.black),
                    buttonRounded(title : '+', textColor: Colors.teal),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buttonRounded(title : '00', textColor: Colors.black),
                    buttonRounded(title : '0', textColor: Colors.black),
                    buttonRounded(title : '.', textColor: Colors.black),
                    buttonRounded(title : '=', textColor: Colors.teal),
                  ],
                ),
              ],
            ),),
          ],
        ),
      )),
    );
  }
}

// Center(
// child: ButtonContainer(
// child: Icon(
// Icons.android,
// size: 100,
// ),
// padding: EdgeInsets.all(10),
// borderRadius: BorderRadius.circular(10),
// ),
// ),
