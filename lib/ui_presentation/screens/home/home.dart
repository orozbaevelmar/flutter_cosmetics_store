import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';
import 'package:flutter_cosmetics_store/data/new_products.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/advertisement_with_text.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/custom_list_view.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/new_products_text.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String> list = [
    'Наборы',
    "Для лица",
    "Для глаз",
    "Для тела",
    "Для лица",
    "Для глаз",
    "Для тела"
  ];

  final Data _data = Data();

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
          NewProductsText(),
          _buildGradientUngerline(),
          SizedBox(height: 24),
          SizedBox(
            height: 278.47,
            child: CustomListView(list: _data.newProductsAtHomeScren),
          ),
          SizedBox(height: 40.53),
          Container(
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientUngerline() {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 4,
      width: 118,
      decoration: BoxDecoration(
        color: MColor.white_dot,
        gradient: MColor.leftToRightGradientColor,
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
        itemCount: 7,
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
                      'assets/list_view_image/image${index + 1}.png',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Text(
                list[index],
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
