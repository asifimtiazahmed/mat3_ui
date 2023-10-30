import 'package:atco_ui/atco_ui.dart';
import 'package:example/scenes/cardScene/cards_scene.dart';
import 'package:example/scenes/colourScene/color_scene.dart';
import 'package:example/scenes/counterScene/counter_scene.dart';
import 'package:example/scenes/dialogScene/dialog_scene.dart';
import 'package:example/scenes/landingScene/landing_scene.dart';
import 'package:example/scenes/notificationScene/notification_scene.dart';
import 'package:example/scenes/typographyScene/typography_scene.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AtcoTheme.lightTheme,
      darkTheme: AtcoTheme.darkTheme,
      title: 'ATCO Design System Demo',
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
