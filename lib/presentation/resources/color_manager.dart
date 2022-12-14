import 'package:flutter/material.dart';

class ColorManager{
  static const Color primary = Color(0xFF2894FD);
  static const Color colorDark = Color(0xFF374352);
  static const Color colorLight = Color(0xFFe6eeff);
  static const Color colorLightShadowUp = Color(0xffd7e2fd);
  // static const Color colorLightShadowDown = Color(0xffeaf1ff);
  static const Color colorLightShadowDown = Color(0xfff5f9ff);
  static const Color numberButtonColor = Color(0xFF37474F);
  static const Color textColorBlueGrey200 = Color(0xFFB0BEC5);
  static const Color textColorBlueGrey600 = Color(0xFF546E7A);
  static const Color textColorBlueGrey300 = Color(0xFF90A4AE);


}

class ColorManagerDark{


}


MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}