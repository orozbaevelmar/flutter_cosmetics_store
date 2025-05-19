import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/ui_presentation/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogScreen extends StatelessWidget {
  CatalogScreen({super.key});
  final TextEditingController controller = TextEditingController();

  final List<String> list = [
    'Назначение',
    'Тип средства',
    'Тип кожи',
    'Линия косметики',
    'Наборы',
    'Акции',
    'Консультация с косметологом '
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSearchField(),
            SizedBox(height: 39),
            _buildCategory(context),
            SizedBox(height: 51),
            _buildTest(),
          ],
        ),
      ),
    );
  }

  Widget _buildTest() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      padding: EdgeInsets.all(24),
      width: double.infinity,
      height: 169,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/home_background.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Составим схему идеального\nдомашнего ухода',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                height: 18 / 16,
                color: MColor.black,
              ),
            ),
          ),
          SizedBox(height: 12),
          Text(
            '10 вопросов о вашей коже',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                height: 17 / 14,
                color: MColor.black,
              ),
            ),
          ),
          SizedBox(height: 16),
          CustomButton(
            text: 'Пройти тест',
            onTap: () {},
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 11),
            backgroundColor: MColor.black,
            borderRadius: BorderRadius.circular(6),
          )
        ],
      ),
    );
  }

  Widget _buildCategory(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      margin: EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < list.length; i++)
            Padding(
              padding: EdgeInsets.only(bottom: i < list.length ? 32 : 0),
              child: RichText(
                text: TextSpan(
                  style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 18.53 / 20,
                      color: MColor.black,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: list[i],
                    ),
                    if (list[i] == 'Акции')
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Image.asset(
                            'assets/discount_icon_2.png',
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        controller: controller,
        onChanged: (value) {},
        onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search_rounded,
              size: 24,
              color: MColor.black.withOpacity(0.5),
            ),
          ),
          prefixIconConstraints: BoxConstraints(),
          hintText: 'Поиск...',
          hintStyle: GoogleFonts.raleway(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              height: 21.13 / 18,
              color: MColor.black.withOpacity(0.5),
            ),
          ),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: MColor.black.withOpacity(0.2))),
        ),
      ),
    );
  }
}
