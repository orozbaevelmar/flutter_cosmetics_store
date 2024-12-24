import 'package:flutter/cupertino.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/model/product.dart';
import 'package:google_fonts/google_fonts.dart';

class NewProductCard extends StatelessWidget {
  final Product product;
  const NewProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 161.01,
            height: 187.65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: MColor.gray_listViewBack),
            child: Image(
              image: AssetImage(product.image),
            ),
          ),
          SizedBox(height: 6.95),
          Text(
            product.name,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 11.58,
                height: 18.53 / 11.58,
                letterSpacing: 1,
                color: MColor.black.withOpacity(0.8),
              ),
            ),
          ),
          SizedBox(height: 1.85),
          SizedBox(
            width: 162.17,
            child: Text(
              product.whatFor,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  height: 18 / 14,
                  letterSpacing: 1,
                  color: MColor.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 8.02),
          SizedBox(
            width: 162.17,
            child: Text(
              product.price,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 18.53 / 16,
                  letterSpacing: 1,
                  color: MColor.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}