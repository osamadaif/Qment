import 'package:flutter/material.dart';
import 'package:qment/presentation/resources/color_manager.dart';
import 'package:qment/presentation/resources/font_manager.dart';
import 'package:qment/presentation/resources/styles_manager.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.centerRight ,
                      child: Text('6.010', style: getBoldStyle(
                          fontSize: FontSize.s55, color: Colors.black,
                      ),),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 24, top: 10, right: 24),
              // height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonContainer(title : 'C', textColor: Colors.red, isNum: false),
                    ButtonContainer(title : '%', textColor: Colors.teal, isNum: false),
                    ButtonContainer(icon: Icons.backspace_outlined, iconColor: Colors.teal, isNum: false),
                    ButtonContainer(title : '÷', textColor: Colors.teal, isNum: false),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonContainer(title : '7', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '8', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '9', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '×', textColor: Colors.teal, isNum: false),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonContainer(title : '4', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '5', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '6', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '-', textColor: Colors.teal, isNum: false),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonContainer(title : '1', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '2', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '3', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '+', textColor: Colors.teal, isNum: false),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonContainer(title : '00', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '0', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '.', textColor: Colors.black, isNum: true),
                    ButtonContainer(title : '=', textColor: Colors.white, isNum: false, backGroundButtonColor: Colors.teal),
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
