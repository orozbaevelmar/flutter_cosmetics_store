import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductsText extends StatelessWidget {
  final String text;
  const NewProductsText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Text(
        text,
        style: GoogleFonts.raleway(
          textStyle: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            height: 36 / 20,
            color: MColor.black,
          ),
        ),
      ),
    );
  }
}
