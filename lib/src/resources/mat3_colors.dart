// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

/// Material 3 of ATCO colors.
///
/// Reference:
/// 1) https://www.figma.com/file/3vTg9unqtwvXm30r4Dl3Ba/IDES-Design-System?node-id=8288%3A225882
///
class Mat3Colors {
  static const MaterialColor greenNight = seaGreen;
  static const MaterialColor seaGreen = MaterialColor(0xFF00916E, seaGreenColors);

  static const MaterialColor lightBeige = linen; // Dark Mode
  static const MaterialColor linen = MaterialColor(0xFFFEEFE5, linenColors);

  static const MaterialColor yellowish = jonquil;
  static const MaterialColor jonquil = MaterialColor(0xFFFFCF00, jonquilColors);

  static const MaterialColor orangeish = persimmon;
  static const MaterialColor persimmon = MaterialColor(0xFFEE6123, persimmonColors);

  static const MaterialColor redder = munsell;
  static const MaterialColor munsell = MaterialColor(0xFF152D54, redColors);

  static const MaterialColor ocean = tertiary2;
  static const MaterialColor tertiary2 = MaterialColor(0xFF0A8289, tertiary2Colors);

  static const MaterialColor pumpkin = tertiary3;
  static const MaterialColor tertiary3 = MaterialColor(0xFFC94D21, tertiary3Colors);

  static const MaterialColor eggplant = tertiary4;
  static const MaterialColor tertiary4 = MaterialColor(0xFF8F659D, tertiary4Colors);

  static const MaterialColor pine = success;
  static const MaterialColor success = MaterialColor(0xFF026A4D, successColors);

  static const MaterialColor cherry = error;
  static const MaterialColor error = MaterialColor(0xFFC3003B, errorColors);

  static const MaterialColor coral = errorDM; // Dark Mode
  static const MaterialColor errorDM = MaterialColor(0xFFFF6E6E, linenColors);

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
const Map<int, Color> seaGreenColors = {
  0: Color(0xFF003d2f),
  10: Color(0xFF00523f),
  20: Color(0xFF007a5e),
  30: Color(0xFF00916E),
  40: Color(0xFF00A37D),
  50: Color(0xFF00A37D),
  60: Color(0xFF00B88D),
  70: Color(0xFF00CC9C),
  80: Color(0xFF00E0AC),
  90: Color(0xFF00E0AC),
  95: Color(0xFF00F5BC),
  99: Color(0xFF0AFFC6),
  100: Color(0xFFFFFFFF),
};

/// charcoal
const Map<int, Color> linenColors = {
  0: Color(0xFF271101),
  10: Color(0xFF4f2103),
  20: Color(0xFF622a04),
  30: Color(0xFF9D4206),
  40: Color(0xFFc55307),
  50: Color(0xFFec6409),
  60: Color(0xFFF77A26),
  70: Color(0xFFF9924E),
  80: Color(0xFFFAAA75),
  90: Color(0xFFFBC39D),
  95: Color(0xFFfddbc4),
  99: Color(0xFFfeefe5),
  100: Color(0xFFFFFFFF),
};

/// sky
const Map<int, Color> jonquilColors = {
  0: Color(0xFF000000),
  10: Color(0xFF001A37),
  20: Color(0xFF002B5C),
  30: Color(0xFF003D81),
  40: Color(0xFF004A9C),
  50: Color(0xFF0057B8),
  60: Color(0xFF3379C6),
  70: Color(0xFF4C89CD),
  80: Color(0xFF80ABDB),
  90: Color(0xFFBFD5ED),
  95: Color(0xFFE5EEF8),
  99: Color(0xFFF2F7FC),
  100: Color(0xFFFFFFFF),
};

/// sun
const Map<int, Color> persimmonColors = {
  0: Color(0xFF000000),
  10: Color(0xFF493300),
  20: Color(0xFF795500),
  30: Color(0xFFA97600),
  40: Color(0xFFCE9000),
  50: Color(0xFFF2A900),
  60: Color(0xFFF5BA33),
  70: Color(0xFFF6C34C),
  80: Color(0xFFF9D480),
  90: Color(0xFFFCE9BF),
  95: Color(0xFFFEF6E5),
  99: Color(0xFFFEFBF2),
  100: Color(0xFFFFFFFF),
};

/// midnight
const Map<int, Color> redColors = {
  0: Color(0xFF000000),
  10: Color(0xFF060D19),
  20: Color(0xFF0A172A),
  30: Color(0xFF0F203B),
  40: Color(0xFF122647),
  50: Color(0xFF152D54),
  60: Color(0xFF445776),
  70: Color(0xFF5B6C87),
  80: Color(0xFF8A96A9),
  90: Color(0xFFC4CAD4),
  95: Color(0xFFE8EAEE),
  99: Color(0xFFF3F5F7),
  100: Color(0xFFFFFFFF),
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
const Map<int, Color> successColors = {
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
const Map<int, Color> errorColors = {
  0: Color(0xFF000000),
  10: Color(0xFF3A0012),
  20: Color(0xFF61001D),
  30: Color(0xFF890029),
  40: Color(0xFFA60032),
  50: Color(0xFFC3003B),
  60: Color(0xFFCF3362),
  70: Color(0xFFD54D76),
  80: Color(0xFFE1809D),
  90: Color(0xFFF0BFCE),
  95: Color(0xFFF9E5EB),
  99: Color(0xFFFCF2F5),
  100: Color(0xFFFFFFFF),
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
