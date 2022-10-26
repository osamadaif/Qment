import 'package:flutter/material.dart';

class ColorManager{
  static const Color primary = Color(0xFF2894FD);
  static const Color lightPrimary = Color(0x402894FD); // Color With 80% Opacity
  static const Color darkPrimary = Color(0xFF284DFD);
  static const Color secondary = Color(0xFFFDD828);
  static const Color yellow = Color(0xFFF9AA33);
  static const Color green = Color(0xFF00D828);
  static const Color background = Color(0xFFe6e6e6);
  static const Color error = Color(0xFFFD4A28); // Red Color

  static const Color backgroundIconsColor = Color(0xFFE2F1FD);

  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xFF404040);
  static const Color darkGrey = Color(0xff525252);
  static const Color liteGreySurface = Color(0xFF9f9f9f);




  static const Color grey = Color(0xff737477);
  static const Color grey1 = Color(0xff707070);
  // static Color grey2 = const Color(0xff797979);
  static const Color backgroundFormField = Color(0xFFeeeeee);

  static  Color liteGreyShimmer = Colors.grey[100]!;
  static  Color darkGreyShimmer = Colors.grey[300]!;

}

class ColorManagerDark{
  static const Color primary =  Color(0xFF3369FF);
  static const Color lightPrimary = Color(0x403369FF); // Color With 80% Opacity
  static const Color darkPrimary = Color(0xFF284DFD);
  // static const Color secondary = Color(0xFFF9AA33);
  static const Color secondary = Color(0xFFfdd73d);
  static const Color green = Color(0xff00d73d);
  static const Color background =  Color(0xFF171c26);
  static const Color backgroundShadow =  Color(0xff1e242e);
  static const Color surfaceBackground = Color(0xFF283040);
  static const Color error = Color(0xFFff726a); // Red Color

  static const Color liteGreySurface = Color(0xFF9f9f9f);
  static const Color hintTextColor = Color(0xFFa8a8a8);

  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xFF404040);
  static const Color darkGrey = Color(0xff525252);

  static const Color grey = Color(0xff737477);
  static const Color grey1 = Color(0xff707070);
  // static Color grey2 = const Color(0xff797979);
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