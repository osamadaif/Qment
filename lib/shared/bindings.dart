import 'package:get/get.dart';
import 'package:qment/controller/calculator_controller.dart';

class CalculatorBindings implements Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(CalculatorControl() /* permanent: true */);
  }

}