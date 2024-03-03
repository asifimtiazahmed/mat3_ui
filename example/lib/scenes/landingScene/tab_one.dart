import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui_eg/scenes/landingScene/landing_vm.dart';
import 'package:flutter/material.dart';


class TabButtons extends StatelessWidget {
  const TabButtons({super.key, required this.vm});

  final LandingVM vm;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(child: Text("TextButton"), onPressed: () {}),
          ),
          SizedBox(height: 10),
          TextButton.icon(onPressed: () {}, icon: Icon(Icons.add), label: Text("TextButton")),
          TextButton(child: Text("TextButton Disabled"), onPressed: null),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              ElevatedButton(child: Text('Elevated Button'), onPressed: () {}),
              FrostedButton(
              onPressed: (){print('on pressed pressed');},
              buttonText: 'Frosted Button',
            ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(onPressed: () {}, label: Text('ELEVATED BUTTON'), icon: Icon(Icons.add)),
          SizedBox(height: 10),
          ElevatedButton(child: Text('ELEVATED BUTTON DISABLED'), onPressed: null),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: OutlinedButton(child: Text('Outlined Button'), onPressed: () {}),
          ),
          SizedBox(height: 10),
          OutlinedButton.icon(icon: Icon(Icons.add), label: Text('Outlined Button'), onPressed: () {}),
          SizedBox(height: 10),
          OutlinedButton(child: Text('Outlined Button Disabled'), onPressed: null),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Toggle Buttons'),
              SizedBox(width: 16),
              ToggleButtons(
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                onPressed: vm.updateToggleButton,
                isSelected: vm.selectedToggleButton,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text('Disabled Toggle Buttons'),
              SizedBox(width: 16),
              ToggleButtons(
                children: [
                  Icon(Icons.ac_unit),
                  Icon(Icons.call),
                  Icon(Icons.cake),
                ],
                isSelected: [false, false, false],
              ),
            ],
          ),
          SizedBox(height: 10),
          Divider(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
