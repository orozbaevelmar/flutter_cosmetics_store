import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/constants/text_styles.dart';
import 'package:flutter_cosmetics_store/ui_presentation/widgets/color_dot.dart';
import 'package:flutter_cosmetics_store/ui_presentation/widgets/custom_button.dart';

class AdvertisementWithText extends StatefulWidget {
  const AdvertisementWithText({super.key});

  @override
  State<AdvertisementWithText> createState() => _AdvertisementWithTextState();
}

class _AdvertisementWithTextState extends State<AdvertisementWithText> {
  late final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 1);
  int selectedIndex = 0;

  ImageProvider setImageIfNotEmpty(String currentPhoto) {
    if (currentPhoto.isNotEmpty) {
      return AssetImage(currentPhoto);
    } else {
      return const AssetImage('assets/noImage.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 359,
      child: Stack(
        children: [
          _buildPageView(),
          _buildDotAndTextAboveImage(),
        ],
      ),
    );
  }

  Widget _buildDotAndTextAboveImage() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ColorDot(isSelected: selectedIndex == 0 ? true : false),
                ColorDot(isSelected: selectedIndex == 1 ? true : false),
                ColorDot(isSelected: selectedIndex == 2 ? true : false),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Colors.black,
              gradient: MColor.topToBottomGradientColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Скидка -15%',
                    style: MTextStyle.velaSans_semiBold(MColor.white)),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Сыворотка',
                            style: MTextStyle.velaSans_normal(MColor.white)),
                        SizedBox(height: 3),
                        Text('HA EYE & NECK SERUM',
                            style: MTextStyle.velaSans_normal(MColor.white)),
                      ],
                    ),
                    CustomButton(
                      text: 'Перейти к акции',
                      onTap: () {},
                      borderRadius: BorderRadius.circular(3),
                      padding: EdgeInsets.all(10),
                    ),
                  ],
                ),
                SizedBox(height: 28),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageView() {
    return PageView.builder(
      physics: const ClampingScrollPhysics(),
      padEnds: false,
      controller: _pageController,
      itemCount: 3,
      onPageChanged: (value) {
        setState(() {
          selectedIndex = value;
        });
      },
      itemBuilder: (context, index) {
        return Image(
          image: setImageIfNotEmpty('assets/image.png'),
          fit: BoxFit.cover,
        );
      },
    );
  }
}
