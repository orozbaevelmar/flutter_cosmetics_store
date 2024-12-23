import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: MColor.white),
        ),
        child: Text(
          'Перейти к акции',
          style: MTextStyle.raleway_semiBold(MColor.white),
        ),
      ),
    );
  }
}
