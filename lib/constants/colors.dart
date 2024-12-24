import 'package:flutter/material.dart';

class MColor {
  static const black = Color(0xFF000000);
  static const gray = Color(0xFF70757F);
  static const gray_20 = Color(0xFFCBCBD5);
  static const gray_listViewBack = Color(0xFFf4f4f4);
  static const white = Color(0xFFFFFFFF);
  static const white_dot = Color(0xFFD9D9D9);

  static final topToBottomGradientColor = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF000000).withOpacity(0),
      Color(0xFF2C2C2C).withOpacity(0.9)
    ],
  );
  static final leftToRightGradientColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFE4FEF9),
      Color(0xFF66F6DC),
    ],
  );
}
/* background: linear-gradient(186.28deg, rgba(0, 0, 0, 0) 8.98%, #2C2C2C 106.61%);
 */
