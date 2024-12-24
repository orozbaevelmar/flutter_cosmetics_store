import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/data/data.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/card_1.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/go_to_discounts.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCareScheme extends StatelessWidget {
  HomeCareScheme({super.key});

  final Data _data = Data();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/home_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              'Моя схема домашнего ухода',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  height: 1,
                  color: MColor.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 23),
          _buildListViewHomeCareScheme(),
          SizedBox(height: 27),
          GoToDiscount(),
        ],
      ),
    );
  }

  Widget _buildListViewHomeCareScheme() {
    return SizedBox(
      height: 101,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 22,
        ),
        itemCount: _data.homeCareScheme.length,
        itemBuilder: (context, index) =>
            CustomCard(productMiniInfo: _data.homeCareScheme[index]),
      ),
    );
  }
}
