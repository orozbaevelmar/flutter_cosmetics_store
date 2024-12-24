import 'package:flutter_cosmetics_store/model/card.dart';
import 'package:flutter_cosmetics_store/model/product.dart';

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
