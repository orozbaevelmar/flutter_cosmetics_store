import 'package:flutter_cosmetics_store/model/frzd/product.dart';

class HowToUse {
  void use() {
    final product = Product(
      id: '001',
      name: 'Ноутбук',
      price: 999.99,
    );

    print(
        product); // Product(id: 001, name: Ноутбук, price: 999.99, description: No description)

    // Использование copyWith
    final updatedProduct = product.copyWith(price: 899.99);
    print(updatedProduct); // Product с новой ценой

    // Пример сериализации в JSON
    final json = updatedProduct.toJson();
    print(
        json); // {id: 001, name: Ноутбук, price: 899.99, description: No description}

    // Десериализация из JSON
    final newProduct = Product.fromJson(json);
    print(newProduct); // Product с данными из JSON
  }
}
