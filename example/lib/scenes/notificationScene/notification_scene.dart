import 'package:atco_ui/atco_ui.dart';
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
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.blue1,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.blue2,
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.grey1,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.pink1,
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.pink2,
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.green1,
            ),
            AtcoMessageView(
              message: 'This is a message to be shown to the user',
              messageType: AtcoMessageType.green2,
            ),
            AtcoMessageView(
              message: 'This is a custom message in case need to be different than what we already have.',
              messageType: AtcoMessageType.custom,
              backgroundColor: context.isLightTheme ? Colors.cyan : Colors.cyan[900],
              contentColor: context.isLightTheme ? Colors.orange[100] : Colors.orange[100],
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
            ),
            AtcoMessageView(
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
              messageType: AtcoMessageType.green2,
            ),
          ],
        ),
      ),
    );
  }
}
