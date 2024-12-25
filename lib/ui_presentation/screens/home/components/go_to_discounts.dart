import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/ui_presentation/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class GoToDiscount extends StatelessWidget {
  const GoToDiscount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Ответьте на 10 вопросов, и мы подберем нужный уход',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  height: 16 / 13,
                  color: MColor.black,
                ),
              ),
            ),
          ),
          CustomButton(
            text: 'Перейти к акции',
            onTap: () {},
            backgroundColor: MColor.black_1,
            borderRadius: BorderRadius.circular(6),
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          ),
        ],
      ),
    );
  }
}
