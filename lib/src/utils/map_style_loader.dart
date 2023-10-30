
import 'package:flutter/services.dart';

Future<String> loadSilverMapStyle() async {
  return await rootBundle.loadString('lib/assets/styles/silver_map_style.txt');
}