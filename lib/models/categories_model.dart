import 'package:flutter/material.dart';

class CategoriesModel {
  final String title;
  final IconData icon;

  CategoriesModel({
    required this.title,
    required this.icon,
  });
}

List categoriesIcons = [
  CategoriesModel(title: "Exhibition", icon: Icons.bubble_chart_outlined),
  CategoriesModel(title: "Event", icon: Icons.alarm_add),
  CategoriesModel(title: "Artwork", icon: Icons.color_lens),
  CategoriesModel(title: "Artist", icon: Icons.brush_outlined),
  CategoriesModel(title: "Collection", icon: Icons.collections),
];
