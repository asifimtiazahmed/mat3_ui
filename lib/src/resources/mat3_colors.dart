// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// Material 3 of ATCO colors.
///
/// Reference:
/// 1) https://www.figma.com/file/3vTg9unqtwvXm30r4Dl3Ba/IDES-Design-System?node-id=8288%3A225882
///
class Mat3Colors {
  static const MaterialColor roseQuartz = neutral;
  static const MaterialColor neutral = MaterialColor(0xFFACA3AF, roseQuartzColors);

  static const MaterialColor lavenderWeb = neutralDM; // Dark Mode
  static const MaterialColor neutralDM = MaterialColor(0xFFD3D2E7, lavenderWebColors);

  static const MaterialColor spaceCadet = primary;
  static const MaterialColor primary = MaterialColor(0xFF383950, spaceCadetColors);

  static const MaterialColor davysGray = secondary;
  static const MaterialColor secondary = MaterialColor(0xFF565264, davysGrayColors);

  static const MaterialColor mistyRose = tertiary1;
  static const MaterialColor tertiary1 = MaterialColor(0xFFF2DFDC, mistyRoseColors);

  static const MaterialColor nightSky = tertiary2;
  static const MaterialColor tertiary2 = MaterialColor(0xFF075B60, tertiary2Colors);

  static const MaterialColor pumpkin = tertiary3;
  static const MaterialColor tertiary3 = MaterialColor(0xFFC94D21, tertiary3Colors);

  static const MaterialColor eggplant = tertiary4;
  static const MaterialColor tertiary4 = MaterialColor(0xFF8F659D, tertiary4Colors);

  static const MaterialColor platinum = success;
  static const MaterialColor success = MaterialColor(0xFFD9D9D9, platinumColors);

  static const MaterialColor brightPink = error;
  static const MaterialColor error = MaterialColor(0xFFEE4B6A, brightPinkColors);

  static const MaterialColor coral = errorDM; // Dark Mode
  static const MaterialColor errorDM = MaterialColor(0xFFFF6E6E, lavenderWebColors);

  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color transparent = Colors.transparent;
  // static const Color warningBackground = Color(0xFFFEF6E5);
  // static const Color warningBackgroundAndGraphics = Color(0xFFF2A900);
  // static const Color warningBackgroundText = Color(0xFFA97600);
  static const Color bgLightMode = Color(0xFFF4F4F4); // neutral[95]
  static const Color bgDarkMode = Color(0xFF121212); // neutral DM [10]
}

/// night
const Map<int, Color> roseQuartzColors = {
  0: Color(0xFF000000),
  10: Color(0xFF201C21),
  20: Color(0xFF352F37),
  30: Color(0xFF4A424C),
  40: Color(0xFF5F5562),
  50: Color(0xFF746878),
  60: Color(0xFF897c8d),
  70: Color(0xFF9d92a0),
  80: Color(0xFFACA3AF),
  90: Color(0xFFc4bec6),
  95: Color(0xFFd8d3d9),
  99: Color(0xFFebe9ec),
  100: Color(0xFFFFFFFF),
};

/// charcoal
const Map<int, Color> lavenderWebColors = {
  0: Color(0xFF000000),
  10: Color(0xFF0f0e1b),
  20: Color(0xFF1e1d35),
  30: Color(0xFF2d2b50),
  40: Color(0xFF3c396a),
  50: Color(0xFF4a4785),
  60: Color(0xFF59569f),
  70: Color(0xFF716db0),
  80: Color(0xFF8a88bf),
  90: Color(0xFFa4a2cd),
  95: Color(0xFFb3bddb),
  99: Color(0xFFd3d2e7),
  100: Color(0xFFF2F2F8),
};

/// sky
const Map<int, Color> spaceCadetColors = {
  0: Color(0xFF000000),
  10: Color(0xFF08080c),
  20: Color(0xFF191924),
  30: Color(0xFF2a2a3c),
  40: Color(0xFF383950),
  50: Color(0xFF4B4C6C),
  60: Color(0xFF5C5D84),
  70: Color(0xFF6f709b),
  80: Color(0xFF8788ab),
  90: Color(0xFF9fa0bc),
  95: Color(0xFFb7bbcd),
  99: Color(0xFFcfcfde),
  100: Color(0xFFFFFFFF),
};

/// sun
const Map<int, Color> davysGrayColors = {
  0: Color(0xFF131216),
  10: Color(0xFF1d1c22),
  20: Color(0xFF302e38),
  30: Color(0xFF43404F),
  40: Color(0xFF565264),
  50: Color(0xFF6A657B),
  60: Color(0xFF7E7891),
  70: Color(0xFF938fa3),
  80: Color(0xFFA9A5B6),
  90: Color(0xFFBEBCC8),
  95: Color(0xFFD4D2DA),
  99: Color(0xFFE9E9ED),
  100: Color(0xFFF4F4F6),
};

/// midnight
const Map<int, Color> platinumColors = {
  0: Color(0xFF000000),
  10: Color(0xFF141414),
  20: Color(0xFF292929),
  30: Color(0xFF3D3D3D),
  40: Color(0xFF525252),
  50: Color(0xFF666666),
  60: Color(0xFF7A7A7A),
  70: Color(0xFF8F8F8F),
  80: Color(0xFFA3A3A3),
  90: Color(0xFFB8B8B8),
  95: Color(0xFFCCCCCC),
  99: Color(0xFFD9D9D9),
  100: Color(0xFFF5F5F5),
};

/// ocean
const Map<int, Color> tertiary2Colors = {
  0: Color(0xFF000000),
  10: Color(0xFF032729),
  20: Color(0xFF054144),
  30: Color(0xFF075B60),
  40: Color(0xFF086F74),
  50: Color(0xFF0A8289),
  60: Color(0xFF3B9BA0),
  70: Color(0xFF53A8AC),
  80: Color(0xFF84C0C4),
  90: Color(0xFFC2E0E1),
  95: Color(0xFFE6F3F3),
  99: Color(0xFFF3F9F9),
  100: Color(0xFFFFFFFF),
};

/// pumpkin
const Map<int, Color> tertiary3Colors = {
  0: Color(0xFF000000),
  10: Color(0xFF3C170A),
  20: Color(0xFF642710),
  30: Color(0xFF8D3617),
  40: Color(0xFFAB411C),
  50: Color(0xFFC94D21),
  60: Color(0xFFD4714D),
  70: Color(0xFFD98264),
  80: Color(0xFFE4A690),
  90: Color(0xFFF2D3C7),
  95: Color(0xFFFAEDE9),
  99: Color(0xFFFCF6F4),
  100: Color(0xFFFFFFFF),
};

/// eggplant
const Map<int, Color> tertiary4Colors = {
  0: Color(0xFF000000),
  10: Color(0xFF2B1E2F),
  20: Color(0xFF47324F),
  30: Color(0xFF64476E),
  40: Color(0xFF7A5685),
  50: Color(0xFF8F659D),
  60: Color(0xFFA584B1),
  70: Color(0xFFB193BA),
  80: Color(0xFFC7B2CE),
  90: Color(0xFFE3D9E6),
  95: Color(0xFFF4F0F5),
  99: Color(0xFFF9F7FA),
  100: Color(0xFFFFFFFF),
};

/// pine
const Map<int, Color> mistyRoseColors = {
  0: Color(0xFF000000),
  10: Color(0xFF012017),
  20: Color(0xFF013527),
  30: Color(0xFF014A36),
  40: Color(0xFF025A41),
  50: Color(0xFF026A4D),
  60: Color(0xFF358871),
  70: Color(0xFF4E9782),
  80: Color(0xFF80B5A6),
  90: Color(0xFFC0DAD3),
  95: Color(0xFFE6F0ED),
  99: Color(0xFFF2F8F6),
  100: Color(0xFFFFFFFF),
};

/// cherry
const Map<int, Color> brightPinkColors = {
  0: Color(0xFF000000),
  10: Color(0xFF38050f),
  20: Color(0xFF5d0918),
  30: Color(0xFF830c22),
  40: Color(0xFFA8102C),
  50: Color(0xFFCD1335),
  60: Color(0xFFEA1F44),
  70: Color(0xFFEE4463),
  80: Color(0xFFEE4B6A),
  90: Color(0xFFF37C92),
  95: Color(0xFFF6A2B1),
  99: Color(0xFFFAC7D0),
  100: Color(0xFFFDECEF),
};

/// coral
const Map<int, Color> errorDMColors = {
  0: Color(0xFF000000),
  10: Color(0xFF4C2121),
  20: Color(0xFF803737),
  30: Color(0xFFB34D4D),
  40: Color(0xFFD95E5E),
  50: Color(0xFFFF6E6E),
  60: Color(0xFFFF8B8B),
  70: Color(0xFFFF9A9A),
  80: Color(0xFFFFB7B7),
  90: Color(0xFFFFDBDB),
  95: Color(0xFFFFF0F0),
  99: Color(0xFFFFF8F8),
  100: Color(0xFFFFFFFF),
};
