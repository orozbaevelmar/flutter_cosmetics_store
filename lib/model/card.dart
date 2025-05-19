import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class ProductMiniInfo {
  String pathToImage;
  String name;
  ProductMiniInfo({
    required this.name,
    required this.pathToImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathToImage': pathToImage,
      'name': name,
    };
  }

  factory ProductMiniInfo.fromMap(Map<String, dynamic> map) {
    return ProductMiniInfo(
      pathToImage: map['pathToImage'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductMiniInfo.fromJson(String source) =>
      ProductMiniInfo.fromMap(json.decode(source) as Map<String, dynamic>);
}
