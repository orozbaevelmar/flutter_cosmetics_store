import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';

import 'package:flutter_cosmetics_store/data/data.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/advertisement_with_text.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/card_1.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/custom_list_view.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/go_to_discounts.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/home_care_scheme.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/new_products_text.dart';
import 'package:flutter_cosmetics_store/ui_presentation/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final Data _data = Data();

  final List<String> list = [
    'Для очищения',
    'Для увлажнения',
    'Для питания',
    'Для омоложения',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdvertisementWithText(),
          SizedBox(height: 25),
          _buildListView(),
          SizedBox(height: 32),
          NewProductsText(text: 'Новинки'),
          _buildGradientUnderline(MColor.leftToRightGradientColor),
          SizedBox(height: 24),
          SizedBox(
            height: 278.47,
            child: CustomListView(list: _data.newProductsAtHomeScren),
          ),
          SizedBox(height: 40.53),
          HomeCareScheme(),
          SizedBox(height: 24),
          NewProductsText(text: 'Акции'),
          _buildGradientUnderline(MColor.leftToRightGradientColor2),
          SizedBox(height: 25),
          SizedBox(
            height: 278.47,
            child: CustomListView(
              list: _data.discountProducts,
            ),
          ),
          _buildGridView(),
          NewProductsText(text: 'Хиты'),
          _buildGradientUnderline(MColor.leftToRightGradientColor3),
          SizedBox(height: 25),
          SizedBox(
            height: 278.47,
            child: CustomListView(
              list: _data.hitProductsAtHomeScren,
            ),
          ),
          SizedBox(height: 51),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 41),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 7, //
        mainAxisSpacing: 8, //
        mainAxisExtent: 60,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              border: Border.all(
                color: MColor.black.withOpacity(0.1),
              )),
          child: Text(
            list[index],
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 36 / 14,
                color: Color(0xFF080808),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildGradientUnderline(Gradient color) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 4,
      width: 118,
      decoration: BoxDecoration(
        color: MColor.white_dot,
        gradient: color,
      ),
    );
  }

  Widget _buildListView() {
    return SizedBox(
      height: 95,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(
          left: 16,
        ),
        itemCount: _data.category.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 72,
                width: 72,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(
                      _data.category[index].pathToImage,
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                _data.category[index].name,
                style: MTextStyle.inter_medium(MColor.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
