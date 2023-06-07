import 'package:flutter/material.dart' show IconData;

class CategoryTwo {
  final int? idc;
  final int? idsub;
  final String name;
  final String? icon;
  final String? imgtab;
  final List<String> itemsss;
  final IconData iconandy;

  CategoryTwo({
    required this.idc,
    required this.idsub,
    required this.name,
    required this.itemsss,
    this.icon,
    this.imgtab,
    required this.iconandy,
  });
}
