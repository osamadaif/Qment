import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:qment/presentation/resources/font_manager.dart';

class CalculatorControl extends GetxController {
  ScrollController scrollController = ScrollController();
  // List<String> operation = [];
  List<double> numbers = [];
  List<double> totals = [];
  List<String> comments = [];
  double? result = 0;

  final List<String> buttons = [
    'C', '%', 'DEL', '÷',
    '7', '8', '9', '×',
    '4', '5', '6', '-',
    '1', '2', '3', '+',
    '00', '0', '.', '=',
  ].obs;

  RxBool isPressed = false.obs;
  var thisIsString = ''.obs;

  void onPointerDown() {
    isPressed.value = true;
    HapticFeedback.vibrate();
  }

  void onPointerUp(PointerUpEvent event) {
      isPressed.value = false;
  }

  var firstNumber  = '10'.obs;
  var secondNumber = '20'.obs;
  var mathResult   = '30'.obs;
  var operation    = '+'.obs;



  // void myString (String myStringLitter){
  //
  //   thisIsString = myStringLitter;
  // }

  resetAll(String c) {
    // myString(c);
    thisIsString = c.obs;
    print(c);

    firstNumber.value  = '0';
    secondNumber.value = '0';
    mathResult.value   = '0';
    operation.value    = '+';
  }

  changeNegativePositive() {
    if ( mathResult.startsWith('-') ) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-' + mathResult.value;
    }
  }

  addNumber( String number ) {
    // myString(number);
    thisIsString = number.obs;
    print(number);

    if ( mathResult.value == '0' )
      return mathResult.value = number;

    if ( mathResult.value == '-0' ){
      return mathResult.value = '-' + number;
    }

    mathResult.value = mathResult.value + number;

  }

  addDecimalPoint(String point) {
    // myString(point);
    thisIsString = point.obs;
    print(point);
    if ( mathResult.contains('.') ) return;

    if ( mathResult.startsWith('0') ){
      mathResult.value = '0.';
    } else {
      mathResult.value = mathResult.value + '.';
    }

  }

  selectOperation( String newOperation ) {
    // myString(newOperation);
    thisIsString = newOperation.obs;
    print(newOperation);

    operation.value   = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value  = '0';

  }

  deleteLastEntry(String del) {
    // myString(del);
    thisIsString = del.obs;
    print(del);

    if ( mathResult.value.replaceAll('-', '').length > 1 ) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length - 1 );
    } else {
      mathResult.value = '0';
    }

  }

  calculateResult(String result) {
    thisIsString = result.obs;
    print(result);

    // finalUserInput = userInput.replaceAll('x', '*');

    double num1 = double.parse( firstNumber.value );
    double num2 = double.parse( mathResult.value );

    secondNumber.value = mathResult.value;

    switch( operation.value ){

      case '+':
        mathResult.value = '${ num1 + num2 }';
        break;

      case '-':
        mathResult.value = '${ num1 - num2 }';
        break;

      case '/':
        mathResult.value = '${ num1 / num2 }';
        break;

      case 'X':
        mathResult.value = '${ num1 * num2 }';
        break;

      default:
        return;
    }

    if ( mathResult.value.endsWith('.0') ) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length - 2 );
    }

  }


  /// init state
  @override
  void onInit() {
    super.onInit();
  }

  /// after build widget
  @override
  void onReady() {
    super.onReady();
  }

  /// on dispose
  @override
  void onClose() {
    super.onClose();
  }

}