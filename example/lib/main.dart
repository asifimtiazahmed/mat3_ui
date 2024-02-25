import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui_eg/scenes/cardScene/cards_scene.dart';
import 'package:material_ui_eg/scenes/colourScene/color_scene.dart';
import 'package:material_ui_eg/scenes/counterScene/counter_scene.dart';
import 'package:material_ui_eg/scenes/dialogScene/dialog_scene.dart';
import 'package:material_ui_eg/scenes/landingScene/landing_scene.dart';
import 'package:material_ui_eg/scenes/notificationScene/notification_scene.dart';
import 'package:material_ui_eg/scenes/typographyScene/typography_scene.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: Mat3Theme.lightTheme,
      darkTheme: Mat3Theme.darkTheme,
      title: 'Material3 Design System Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScene(),
        '/colours': (context) => ColourScene(),
        '/typography': (context) => TypographyScene(),
        '/counter': (context) => CounterScene(),
        '/dialogs': (context) => DialogScene(),
        '/cards': (context) => CardsScene(),
        '/notifications': (context) => NotificationScene(),
      },
    );
  }
}
