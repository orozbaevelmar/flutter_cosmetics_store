import 'package:flutter/cupertino.dart';
import 'package:flutter_cosmetics_store/model/product.dart';
import 'package:flutter_cosmetics_store/ui_presentation/screens/home/components/new_product_card.dart';

class CustomListView extends StatelessWidget {
  final List<Product> list;
  const CustomListView({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        left: 15,
      ),
      itemCount: 3,
      itemBuilder: (context, index) => NewProductCard(
        product: list[index],
      ),
    );
  }
}
