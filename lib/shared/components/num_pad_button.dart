import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qment/controller/calculator_controller.dart';
import 'package:qment/presentation/resources/color_manager.dart';
import 'package:qment/presentation/resources/font_manager.dart';
import 'package:qment/presentation/resources/styles_manager.dart';
import 'package:qment/presentation/resources/values_manager.dart';

class NumPadButton extends StatelessWidget {
  // const ButtonContainer({Key? key}) : super(key: key);
  final BorderRadius? borderRadius;
  final double padding = 13.0;
  final bool isNum;
  final Color backGroundButtonColor;
  final String? title;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;
  final void Function(PointerDownEvent)? onPointerDown;
  final void Function(PointerUpEvent)? onPointerUp;
  final int index;
  final Function onPressed;

  NumPadButton(
      {this.borderRadius,
      this.backGroundButtonColor = ColorManager.colorLight,
      this.isNum = false,
      this.title,
      this.textColor,
      this.icon,
      this.iconColor,
      this.onPointerDown,
      this.onPointerUp,
        required this.index,
        required this.onPressed,
      });

  final CalculatorControl controller = Get.find();

  // void _onPointerDown(PointerDownEvent event) {
  //     // isPressed = true;
  //     // calcFontSize = FontSize.s16;
  //     // HapticFeedback.vibrate();
  // }
  //
  // // controller.onPointerDown(event);
  // // controller.onPointerUp(event);
  // void _onPointerUp(PointerUpEvent event) {
  //   //   isPressed = false;
  //   //
  //   // calcFontSize = FontSize.s22;
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Listener(
        onPointerDown: (event){
          onPressed();
          controller.onPointerDown();
        },
        onPointerUp: controller.onPointerUp,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Obx(
              ()=> Container(
              padding: EdgeInsets.all(padding),
              decoration: BoxDecoration(
                  color: backGroundButtonColor,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value
                      ? null
                      : [BoxShadow(
                              color: Colors.blueGrey.shade200,
                              offset: const Offset(4.0, 4.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0),
                          const BoxShadow(
                              color: Colors.white,
                              offset: Offset(-4.0, -4.0),
                              blurRadius: 10.0,
                              spreadRadius: 1.0)
                        ]),
              child: Container(
                // margin: EdgeInsets.all(2),
                width: padding * 2.0,
                height: padding * 2.0,
                child: title != null
                    ? AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 50),
                        curve: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value ? Curves.easeOutCirc : Curves.easeIn,
                        style: getSemiBoldStyle(
                            fontSize: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value
                                ? FontSize.s16
                                : FontSize.s22,
                            color: textColor!),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              '${title}',
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              // style: getSemiBoldStyle(
                              //     fontSize: FontSize.s24, color: textColor),
                            ),
                          ),
                        ),
                      )
                    : AnimatedContainer(
                        duration: const Duration(milliseconds: 50),
                        curve: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value ? Curves.easeOutCirc : Curves.easeIn,
                        height: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value ? 20.0 : 8.0,
                        width: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value ? 20.0 : 8.0,
                        child: Center(
                          child: Icon(
                            icon,
                            color: iconColor,
                            size: controller.isPressed.value && controller.buttons.elementAt(index) == controller.thisIsString.value ? AppSize.s18 : AppSize.s22,
                          ),
                        ),
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
