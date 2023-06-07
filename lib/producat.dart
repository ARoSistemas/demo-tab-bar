import 'package:flutter/material.dart' show IconData;

class CategoryTwo {
  final int? idc;
  final int? idsub;
  final String name;
  final String? icon;
  final String? imgtab;
  // final List<String> subItems;   Se cambia el nombre para mayor claridad
  final List<String> subItems;

  // Estos elementos solo son para mostrar un icono en vez de tu imagen.
  // Los borras.
  final IconData iconImageItemPrincipal;
  final List<IconData> iconImagesubItem;

  CategoryTwo({
    required this.idc,
    required this.idsub,
    required this.name,
    this.icon,
    this.imgtab,
    required this.subItems,
    required this.iconImageItemPrincipal,
    required this.iconImagesubItem,
  });
}
