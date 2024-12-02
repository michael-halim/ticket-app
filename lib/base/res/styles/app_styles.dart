import 'package:flutter/material.dart';

const primary = Color(0xFF687DAF);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3B3B3B);
  static Color bgColor = const Color(0xFFEEEDF2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFD2BDB6);
  static Color ticketTabColor = const Color(0xFFF37B67);
  static Color planeColor = const Color(0xFFF4F6FD);

  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle4 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
