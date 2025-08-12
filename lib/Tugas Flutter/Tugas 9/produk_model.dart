import 'dart:convert';

import 'package:flutter/material.dart';

class ProdukModel {
  final String nama;
  final int price;
  final Color warna;
  ProdukModel({required this.nama, required this.price, required this.warna});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nama': nama, 'price': price, 'warna': warna};
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      nama: map['nama'] as String,
      price: map['price'] as int,
      warna: Color(map['warna'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) =>
      ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
