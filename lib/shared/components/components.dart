import 'package:flutter/material.dart';
import 'package:qment/presentation/resources/color_manager.dart';

class ButtonContainer extends StatefulWidget {
  // const ButtonContainer({Key? key}) : super(key: key);
  final Widget? child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  ButtonContainer({this.child, this.borderRadius, this.padding});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;

    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: ColorManager.colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                        color: Colors.blueGrey.shade200,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0)
                  ]),
        child: widget.child,
      ),
    );
  }
}

Widget buttonRounded(
    {String? title,
    padding = 15.0,
    Color? textColor,
    IconData? icon,
    Color? iconColor}) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: ButtonContainer(
      child: Container(
        width: padding * 2.0,
        height: padding * 2.0,
        child: Center(
          child: title != null
              ? Text(
                  '$title',
                  style: TextStyle(
                      color: textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                )
              : Icon(
                  icon,
                  color: iconColor,
                  size: 22,
                ),
        ),
      ),
      padding: EdgeInsets.all(padding),
      borderRadius: BorderRadius.circular(40),
    ),
  );
}
