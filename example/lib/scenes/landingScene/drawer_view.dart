import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.only(top: 40.0),
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue[50]),
          margin: EdgeInsets.all(0.0),
          padding: EdgeInsets.all(0.0),
          child: Center(child: FlutterLogo(size: 100)),
        ),
        _buildRow(context, 'Colours', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/colours');
        }),
        _buildRow(context, 'Typography', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/typography');
        }),
        _buildRow(context, 'Dialogs', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/dialogs');
        }),
        _buildRow(context, 'Cards', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/cards');
        }),
        _buildRow(context, 'Notifications', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/notifications');
        }),
        _buildRow(context, 'Counter App', () {
          Navigator.pop(context);
          Navigator.pushNamed(context, '/counter');
        }),
        ListTile(
          title: Text('App Ver. 2.0.0'),
          subtitle: Text('IDES ver. 1.0.0 (Powered by Material You!)'),
        )
      ],
    );
  }

  Widget _buildRow(BuildContext context, String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.headline5!),
      onTap: onTap,
    );
  }
}
