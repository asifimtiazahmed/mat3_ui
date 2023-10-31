import 'package:material_ui/mat3_ui.dart';
import 'package:flutter/material.dart';

class NotificationScene extends StatelessWidget {
  const NotificationScene({super.key});

  static const snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.blue1,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.blue2,
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.grey1,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.pink1,
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.pink2,
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.green1,
            ),
            Mat3MessageView(
              message: 'This is a message to be shown to the user',
              messageType: Mat3MessageType.green2,
            ),
            Mat3MessageView(
              message: 'This is a custom message in case need to be different than what we already have.',
              messageType: Mat3MessageType.custom,
              backgroundColor: context.isLightTheme ? Colors.cyan : Colors.cyan[900],
              contentColor: context.isLightTheme ? Colors.orange[100] : Colors.orange[100],
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            Mat3MessageView(
              icon: const SizedBox.shrink(),
              content: Row(
                children: [
                  Icon(Icons.access_alarms),
                  const SizedBox(width: 12),
                  Text('This is a custom message!', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(width: 8),
                  Text(
                    'Pass Content widget instead of a message in order to build something like this.',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              messageType: Mat3MessageType.green2,
            ),
          ],
        ),
      ),
    );
  }
}
