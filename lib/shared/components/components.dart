import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qment/presentation/resources/color_manager.dart';
import 'package:qment/presentation/resources/font_manager.dart';
import 'package:qment/presentation/resources/styles_manager.dart';
import 'package:qment/presentation/resources/values_manager.dart';
import 'package:qment/shared/components/constants.dart';

class ButtonContainer extends StatefulWidget {
  // const ButtonContainer({Key? key}) : super(key: key);
  final BorderRadius? borderRadius;
  final double padding = 15.0;
  final bool isNum;
  final Color backGroundButtonColor;

  final String? title;
  final Color? textColor;
  final IconData? icon;
  final Color? iconColor;

  ButtonContainer(
      {this.borderRadius,
      this.backGroundButtonColor = ColorManager.colorLight,
      this.isNum = false,
      this.title,
      this.textColor,
      this.icon,
      this.iconColor});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  // bool isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      isPressed = true;
      // Feedback.forTap(context);
      // SystemSound.play(SystemSoundType.click);
      // if(widget.isNum!){
      //   if(Theme.of(context).platform == TargetPlatform.android){
      //     FlutterBeep.beep();
      //     // FlutterBeep.playSysSound(79);
      //   }
      //   else if( Theme.of(context).platform == TargetPlatform.iOS){
      //     FlutterBeep.playSysSound(1104);
      //   }
      // } else{
      //   if(Theme.of(context).platform == TargetPlatform.android){
      //     FlutterBeep.beep();
      //     // FlutterBeep.playSysSound(79);
      //   }
      //   else if( Theme.of(context).platform == TargetPlatform.iOS){
      //     FlutterBeep.playSysSound(1105);
      //   }
      // }
      calcFontSize = FontSize.s22;
      HapticFeedback.vibrate();
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      calcFontSize = FontSize.s24;
      isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: true,
      child: Listener(

        onPointerDown: _onPointerDown,
        onPointerUp: _onPointerUp,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            padding: EdgeInsets.all(widget.padding),
            decoration: BoxDecoration(
                color: widget.backGroundButtonColor,
                borderRadius: BorderRadius.circular(40),
                boxShadow: isPressed
                    ? null
                    : [
                        BoxShadow(
                            color: Colors.blueGrey.shade200,
                            offset: const Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0)
                      ]),
            child: Container(
              // margin: EdgeInsets.all(2),
              width: widget.padding * 2.0,
              height: widget.padding * 2.0,
              child: widget.title != null
                  ? AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 25),
                      style: getSemiBoldStyle(
                          fontSize: calcFontSize!, color: widget.textColor!),
                      child: Text(
                        '${widget.title}',
                        textAlign: TextAlign.center,
                        // style: getSemiBoldStyle(
                        //     fontSize: FontSize.s24, color: textColor),
                      ),
                    )
                  : AnimatedContainer(
                duration: const Duration(milliseconds: 25),
                    height: isPressed ? 20.0 : 10.0,
                    width: isPressed ? 20.0 : 10.0,
                    child: Icon(
                        widget.icon,
                        color: widget.iconColor,
                        size: isPressed ? AppSize.s22 : AppSize.s24,
                      ),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget buttonRounded(
//     {String? title,
//     Color? textColor,
//     IconData? icon,
//     Color? iconColor,
//     Color backGroundButtonColor = ColorManager.colorLight,
//     bool isNum = false}) {
//   return Padding(
//     padding: const EdgeInsets.all(6.0),
//     child: ButtonContainer(
//       child: Container(
//         // margin: EdgeInsets.all(2),
//         width: padding * 2.0,
//         height: padding * 2.0,
//         child: title != null
//             ? AnimatedDefaultTextStyle(
//           duration: Duration(milliseconds: 200),
//               style: getSemiBoldStyle(
//                   fontSize: calcFontSize!, color: textColor!),
//               child: Text(
//                     '$title',
//                     textAlign: TextAlign.center,
//                     // style: getSemiBoldStyle(
//                     //     fontSize: FontSize.s24, color: textColor),
//                   ),
//             )
//             : Icon(
//                 icon,
//                 color: iconColor,
//                 size: AppSize.s24,
//               ),
//       ),
//     ),
//   );
// }
