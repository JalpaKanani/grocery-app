// To parse this JSON data, do
//
//     final cartDbModel = cartDbModelFromJson(jsonString);

import 'dart:convert';

class CartDbModel {
  CartDbModel({
    this.id,
    this.productId,
    this.name,
    this.image,
    this.price,

    this.unit,
   // this.units,    // //25-3-22

    this.qty,
  });

  int? id;
  int? productId;
  String? name;
  String? image;
  String? price;

  String? unit;
 // String? units;  //25-3-22

  int? qty;

  factory CartDbModel.fromRawJson(String str) => CartDbModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CartDbModel.fromJson(Map<String, dynamic> json) => CartDbModel(
    id: json["id"] == null ? null : json["id"],
    productId: json["product_id"] == null ? null : json["product_id"],
    name: json["name"] == null ? null : json["name"],
    image: json["image"] == null ? null : json["image"],
    price: json["price"] == null ? null : json["price"],

    unit: json["unit"] == null ? null : json["unit"],
//units: json["units"] == null ? null : json["units"],   //25-3-22

    qty: json["qty"] == null ? null : json["qty"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "product_id": productId == null ? null : productId,
    "name": name == null ? null : name,
    "image": image == null ? null : image,
    "price": price == null ? null : price,

    "unit": unit == null ? null : unit,
 // "units": units == null ? null : units,  //25-3-22

    "qty": qty == null ? null : qty,
  };
}
