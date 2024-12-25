// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Product {
  String name;
  String whatFor;
  String price;
  String image;
  String? discount;
  Widget? discountWidget;
  Product({
    required this.name,
    required this.whatFor,
    required this.price,
    required this.image,
    this.discount,
    this.discountWidget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'whatFor': whatFor,
      'price': price,
      'image': image,
      'discount': discount,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] as String,
      whatFor: map['whatFor'] as String,
      price: map['price'] as String,
      image: map['image'] as String,
      discount: map['discount'] != null ? map['discount'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
