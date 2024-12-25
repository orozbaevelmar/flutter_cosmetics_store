import 'package:flutter/material.dart';
import 'package:flutter_cosmetics_store/constants/colors.dart';
import 'package:flutter_cosmetics_store/model/card.dart';
import 'package:flutter_cosmetics_store/model/product.dart';
import 'package:google_fonts/google_fonts.dart';

class Data {
  final List<Product> newProductsAtHomeScren = [
    Product(
      name: 'Сыворотка',
      whatFor: 'Unstress Total Serenity Serum',
      price: '10 195 ₽',
      image: 'assets/list_view_image_2/image1.png',
    ),
    Product(
      name: 'Тоник',
      whatFor: 'Unstress Revitalizing Toner',
      price: '3095 ₽',
      image: 'assets/list_view_image_2/image2.png',
    ),
    Product(
      name: 'Сыворотка',
      whatFor: 'Unstress Total Serenity Serum',
      price: '10 195 ₽',
      image: 'assets/list_view_image_2/image1.png',
    ),
  ];
  final List<Product> discountProducts = [
    Product(
      name: 'Сыворотка',
      whatFor: 'Muse Serum Supreme',
      price: '10 195 ₽',
      image: 'assets/discount_products/image1.png',
      discount: '10 195 ₽',
      discountWidget: Image.asset(
        'assets/discount_icon.png',
        fit: BoxFit.cover,
        height: 25,
        width: 25,
      ),
    ),
    Product(
        name: 'Крем',
        whatFor: 'Unstress Revitalizing Toner',
        price: '1595 ₽',
        image: 'assets/discount_products/image2.png',
        discount: '3195 ₽',
        discountWidget: Column(
          children: [
            Image.asset(
              'assets/discount_icon.png',
              fit: BoxFit.cover,
              height: 25,
              width: 25,
            ),
            SizedBox(height: 11),
            Text(
              '1+1',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 18.53 / 16,
                  color: Color(0xFFF47DDA),
                ),
              ),
            )
          ],
        )),
    Product(
      name: 'Сыворотка',
      whatFor: 'Muse Serum Supreme',
      price: '10 195 ₽',
      image: 'assets/discount_products/image1.png',
      discount: '10 195 ₽',
      discountWidget: Image.asset(
        'assets/discount_icon.png',
        fit: BoxFit.cover,
        height: 25,
        width: 25,
      ),
    ),
  ];
  final List<Product> hitProductsAtHomeScren = [
    Product(
      name: 'Сыворотка',
      whatFor: 'Forever Young- Total Renewal Serum',
      price: '10 195 ₽',
      image: 'assets/hits/image1.png',
    ),
    Product(
      name: 'Осветляющая маска',
      whatFor: 'Illustious Mask',
      price: '1595 ₽',
      image: 'assets/hits/image2.png',
    ),
    Product(
      name: 'Сыворотка',
      whatFor: 'Forever Young- Total Renewal Serum',
      price: '10 195 ₽',
      image: 'assets/hits/image1.png',
    ),
  ];

  final List<ProductMiniInfo> category = [
    ProductMiniInfo(
      name: 'Наборы',
      pathToImage: 'assets/list_view_image/image1.png',
    ),
    ProductMiniInfo(
      name: 'Для лица',
      pathToImage: 'assets/list_view_image/image2.png',
    ),
    ProductMiniInfo(
      name: 'Для глаз',
      pathToImage: 'assets/list_view_image/image3.png',
    ),
    ProductMiniInfo(
      name: 'Для тела',
      pathToImage: 'assets/list_view_image/image4.png',
    ),
    ProductMiniInfo(
      name: 'Для лица',
      pathToImage: 'assets/list_view_image/image2.png',
    ),
    ProductMiniInfo(
      name: 'Для глаз',
      pathToImage: 'assets/list_view_image/image3.png',
    ),
    ProductMiniInfo(
      name: 'Для тела',
      pathToImage: 'assets/list_view_image/image4.png',
    ),
  ];

  final List<ProductMiniInfo> homeCareScheme = [
    ProductMiniInfo(
      name: 'Демакияж',
      pathToImage: 'assets/homeCareScheme/image1.png',
    ),
    ProductMiniInfo(
      name: 'Очищение',
      pathToImage: 'assets/homeCareScheme/image2.png',
    ),
    ProductMiniInfo(
      name: 'Сыворотка',
      pathToImage: 'assets/homeCareScheme/image3.png',
    ),
    ProductMiniInfo(
      name: 'Дневной крем',
      pathToImage: 'assets/homeCareScheme/image4.png',
    ),
    ProductMiniInfo(
      name: 'Демакияж',
      pathToImage: 'assets/homeCareScheme/image1.png',
    ),
  ];
}
