import 'package:material_ui/mat3_ui.dart';
import 'package:flutter/material.dart';

class CardsScene extends StatelessWidget {
  const CardsScene({super.key});

  static const snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cards')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            ActionCard(
              title: 'Title of the Card without Action button',
              child: Placeholder(fallbackHeight: 100),
            ),
            SizedBox(height: 16),
            ActionCard(
              title: 'Title with Action button',
              action: Mat3IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(snackBar),
              ),
              child: Placeholder(fallbackHeight: 150),
            ),
          ],
        ),
      ),
    );
  }
}
