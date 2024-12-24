import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/model/card.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  final ProductMiniInfo productMiniInfo;

  const CustomCard({
    super.key,
    required this.productMiniInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 81,
            decoration: BoxDecoration(
                color: MColor.white,
                border:
                    Border.all(width: 3, color: MColor.white.withOpacity(0.5)),
                borderRadius: BorderRadius.circular(6)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: AssetImage(productMiniInfo.pathToImage),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            productMiniInfo.name,
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                height: 16 / 12,
                color: MColor.black,
              ),
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
