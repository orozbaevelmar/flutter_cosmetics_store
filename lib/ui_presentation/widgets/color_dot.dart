import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';

class ColorDot extends StatelessWidget {
  final bool isSelected;
  const ColorDot({
    super.key,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            isSelected ? MColor.white_dot : MColor.white_dot.withOpacity(0.5),
      ),
    );
  }
}
