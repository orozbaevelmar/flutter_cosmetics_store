import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart'; // Для Freezed
part 'product.g.dart'; // Для сериализации JSON

// pubspec.yaml (dev dependencies):
//    build_runner: ^2.4.9
//    json_serializable: ^6.8.0
//    freezed: ^2.5.2

// pubspec.yaml (dependencies):
//      freezed_annotation: ^3.0.0
//      json_annotation: ^4.9.0

// Terminal: dart run build_runner build

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required double price,
    @Default('No description') String description,
  }) = _Product;

  // Сериализация JSON
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
