import 'package:flutter/material.dart';

class CustomColor {
  static Color get primaryColor1 => const Color(0xff93A3FD);
  static Color get primaryColor2 => const Color(0xff9DCEFF);

  static Color get secondryColor1 => const Color(0xffC58BF2);
  static Color get secondryColor2 => const Color(0xffEEA4CE);

  static List<Color> get primaryG => [primaryColor1, primaryColor2];
  static List<Color> get secondaryG => [secondryColor1, secondryColor2];

  static Color get black => const Color(0xff1D1617);
  static Color get gray => const Color(0xff786F72);
  static Color get white => Colors.white;
}
