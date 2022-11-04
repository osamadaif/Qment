import 'package:flutter/material.dart';
import 'package:qment/presentation/resources/color_manager.dart';

class dividerShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 24, right: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: ColorManager.colorLight,
        boxShadow: const [
          BoxShadow(
            color: ColorManager.colorLightShadowUp,
          ),
          BoxShadow(
            color: ColorManager.colorLightShadowDown,
            spreadRadius: -1,
            blurRadius: 1,
            offset: Offset(1, 2),
          ),
        ],
      ),
    );
  }
}