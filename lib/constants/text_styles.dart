import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*     FontWeight

100	Thin (Hairline)
200	Extra Light (Ultra Light)
300	Light
400	Normal
500	Medium
600	Semi Bold (Demi Bold)
700	Bold
800	Extra Bold (Ultra Bold)
900	Black (Heavy) */

class MTextStyle {
  static inter_medium(Color color) {
    return GoogleFonts.inter(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 14.52 / 12,
        letterSpacing: 0,
        color: color,
      ),
    );
  }

  static raleway_medium(Color color) {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 10,
        height: 11.74 / 10,
        letterSpacing: 2,
        color: color,
      ),
    );
  }

  static raleway_semiBold(Color color) {
    return GoogleFonts.raleway(
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 12,
        height: 16 / 12,
        color: color,
      ),
    );
  }

  static velaSans_semiBold(Color color) {
    return TextStyle(
      fontFamily: 'VelaSans',
      fontWeight: FontWeight.w600,
      fontSize: 35.05,
      height: 36.09 / 35.05,
      color: color,
    );
  }

  static velaSans_normal(Color color) {
    return TextStyle(
      fontFamily: 'VelaSans',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 18.53 / 16,
      color: color,
    );
  }
}
