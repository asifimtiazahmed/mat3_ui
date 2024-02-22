import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui_eg/scenes/colourScene/colors.dart';
import 'package:flutter/material.dart';

class ColourScene extends StatelessWidget {
  final List<ColourItem> colors = [
    ColourItem(1, 'Neutral (Night)', seaGreenColors),
    ColourItem(2, 'Neutral Dark Mode (Charcoal)', linenColors),
    ColourItem(3, 'Primary (Sky)', jonquilColors),
    ColourItem(4, 'Secondary (Sun)', persimmonColors),
    ColourItem(5, 'Tertiary 1 (Midnight)', redColors),
    ColourItem(6, 'Tertiary 2 (Ocean)', tertiary2Colors),
    ColourItem(7, 'Tertiary 3 (Pumpkin)', tertiary3Colors),
    ColourItem(8, 'Tertiary 4 (Eggplant)', tertiary4Colors),
    ColourItem(9, 'Success (Pine)', successColors),
    ColourItem(10, 'Error (Cherry)', errorColors),
    ColourItem(11, 'Error Dark Mode (Coral)', errorDMColors),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colours')),
      body: ListView(
        children: colors.map((e) => _buildRow(context, e)).toList(),
      ),
    );
  }

  Widget _buildRow(BuildContext context, ColourItem item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(height: 50.0, color: Colors.purple[100], child: Center(child: Text('${item.id} - ${item.title}'))),
        Wrap(
          children: [
            _buildTile(context, 0, item.colorSwatch[0]),
            _buildTile(context, 10, item.colorSwatch[10]),
            _buildTile(context, 20, item.colorSwatch[20]),
            _buildTile(context, 30, item.colorSwatch[30]),
            _buildTile(context, 40, item.colorSwatch[40]),
            _buildTile(context, 50, item.colorSwatch[50]),
            _buildTile(context, 60, item.colorSwatch[60]),
            _buildTile(context, 70, item.colorSwatch[70]),
            _buildTile(context, 80, item.colorSwatch[80]),
            _buildTile(context, 90, item.colorSwatch[90]),
            _buildTile(context, 95, item.colorSwatch[95]),
            _buildTile(context, 99, item.colorSwatch[99]),
            _buildTile(context, 100, item.colorSwatch[100]),
          ],
        ),
        SizedBox(height: 16.0),
      ],
    );
  }

  Widget _buildTile(BuildContext context, int key, Color? backgroundColor) {
    return InkWell(
      onTap: () {
        print('tapped!');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('$key: $backgroundColor'.toUpperCase()),
          duration: const Duration(seconds: 5),
        ));
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        color: backgroundColor,
        child: Center(child: Text('$key')),
      ),
    );
  }
}
