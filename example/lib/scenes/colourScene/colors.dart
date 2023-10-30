import 'package:flutter/material.dart';

class ColourItem {
  ColourItem(this.id, this.title, this.colorSwatch);

  final int id;
  final String title;
  final Map<int, Color> colorSwatch;
}
