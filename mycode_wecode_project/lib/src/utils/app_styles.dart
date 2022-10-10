import 'package:flutter/material.dart';

Color primary = const Color(0XFF304FB9);

class Styles {
  static Color primaryColor = primary;
  static Color primaryLightColor = Color.fromARGB(70, 48, 79, 185);
  static Color secondaryColor = const Color(0XFFFF8142);

  static Color successColor = const Color(0XFF5AA897);
  static Color errorColor = const Color(0XFFFF9A9A);

  static Color bgColorPrimary = primary;
  static Color bgColor = const Color(0XFFF0F0F0);

  static Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static Color blackColor = Color.fromARGB(255, 0, 0, 0);
  static Color textColor = Color.fromARGB(255, 0, 0, 0);

  static TextStyle textStyleLarge = TextStyle(
    fontSize: 16,
    color: textColor,
  );

  static TextStyle textStyleSmall = TextStyle(
    fontSize: 14,
    color: textColor,
  );
  static TextStyle textStyleCaption =
      TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 34, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 24, color: textColor, fontWeight: FontWeight.bold);

  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 20, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle4 =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle5 =
      TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle6 =
      TextStyle(fontSize: 12, color: textColor, fontWeight: FontWeight.bold);
}
