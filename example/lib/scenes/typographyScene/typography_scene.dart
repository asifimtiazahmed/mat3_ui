import 'package:flutter/material.dart';

class TypographyScene extends StatelessWidget {
  const TypographyScene({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Typography')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          SizedBox(height: 32.0),
          Text(
            'titleLarge',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 10),
          Text(
            'titleMedium',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10),
          Text(
            'titleSmall',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 10),
          Text(
            'headlineLarge',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 10),
          Text(
            'headlineMedium',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 10),
          Text(
            'headlineSmall',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 10),
          Text(
            'displayLarge',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          SizedBox(height: 10),
          Text(
            'displayMedium',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(height: 10),
          Text(
            'displaySmall',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SizedBox(height: 10),
          Text(
            'bodyLarge',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(height: 10),
          Text('bodyMedium', style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10),
          Text(
            'bodySmall',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 10),
          Text(
            'labelLarge',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(height: 10),
          Text(
            'labelMedium',
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(height: 10),
          Text(
            'labelSmall',
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
