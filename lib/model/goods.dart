// To parse this JSON data, do
//
//     final goods = goodsFromJson(jsonString);

import 'dart:convert';

List<Goods> goodsFromJson(String str) => List<Goods>.from(json.decode(str).map((x) => Goods.fromJson(x)));

String goodsToJson(List<Goods> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Goods {
  Goods({
    this.brand,
    this.model,
    this.type,
    this.img,
    this.price,
    this.description,
  });

  String brand;
  String model;
  String type;
  String img;
  String price;
  String description;

  factory Goods.fromJson(Map<String, dynamic> json) => Goods(
    brand: json["brand"],
    model: json["model"],
    type: json["type"],
    img: json["img"],
    price: json["price"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "brand": brand,
    "model": model,
    "type": type,
    "img": img,
    "price": price,
    "description": description,
  };
}



class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}