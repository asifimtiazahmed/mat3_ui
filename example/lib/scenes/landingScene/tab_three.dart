import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui_eg/scenes/landingScene/landing_vm.dart';
import 'package:flutter/material.dart';

class TabOthers extends StatelessWidget {
  const TabOthers({super.key, required this.vm});

  final LandingVM vm;

  final String adaptiveSwitchText =
      'Adaptive Switch based on whether the target platform is iOS or macOS, following Material design\'s Cross-platform guidelines.\nOn iOS and macOS, this constructor creates a CupertinoSwitch, which has matching functionality and presentation as Material switches, and are the graphics expected on iOS. On other platforms, this creates a Material design Switch.';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      children: [
        Text('Icons'),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: [
            Icon(Icons.inventory),
            Icon(Icons.history),
            Icon(Icons.home),
            Icon(Icons.perm_identity),
            Icon(Icons.notifications),
            Icon(Icons.calendar_today),
            Icon(Icons.pin_drop),
            Icon(Icons.keyboard_arrow_up),
            Icon(Icons.close),
          ],
        ),
        Divider(),
        SizedBox(height: 16),
        Row(
          children: [
            Checkbox(
              value: vm.checkboxValue,
              onChanged: (bool? newValue) => vm.updateCheckbox(newValue),
            ),
            Text('Checkbox title'),
          ],
        ),
        CheckboxListTile(
          title: Text('Checkbox in ListTile'),
          value: vm.checkboxValue,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? newValue) => vm.updateCheckbox(newValue),
        ),
        CheckboxListTile(
          title: Text('Checkbox in ListTile'),
          value: vm.checkboxValue,
          onChanged: (bool? newValue) => vm.updateCheckbox(newValue),
        ),
        CheckboxListTile(
          title: Text('Checkbox disabled'),
          tristate: true,
          value: null,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: null,
        ),
        SizedBox(height: 16),
        Divider(),
        SizedBox(height: 16),
        ListTile(
          leading: Icon(Icons.ac_unit),
          trailing: Icon(Icons.access_alarm),
          title: Text('ListTile Title'),
          subtitle: Text('Tab to select/unselect.'),
          selected: vm.listTileSelected,
          onTap: () => vm.toggleListTileSelected(),
        ),
        Divider(),
        SizedBox(height: 16),
        Row(
          children: [
            Switch(
              value: vm.switchValue,
              onChanged: vm.updateSwitch,
            ),
            Text("Custom Switch"),
          ],
        ),
        SizedBox(height: 16),
        SwitchListTile(
          value: vm.switchValue,
          onChanged: vm.updateSwitch,
          title: Text('Switch in ListTile'),
          subtitle: Text('This is subtitle'),
        ),
        SwitchListTile(
          value: vm.switchValue,
          onChanged: null,
          title: Text('Disabled Switch'),
          subtitle: Text('This is subtitle'),
        ),
        SizedBox(height: 16),
        //Adaptive will create a different switch depending on the OS.
        //Note we can't set this in the theme data so use it sparingly.
        Row(
          children: [
            Expanded(child: Text(adaptiveSwitchText, style: Theme.of(context).textTheme.bodySmall)),
            Switch.adaptive(
                activeColor: Mat3Colors.jonquil,
                value: vm.switchValue,
                onChanged: (bool newValue) {
                  vm.updateSwitch(newValue);
                }),
          ],
        ),
        SizedBox(height: 16),
        Divider(),
        SizedBox(height: 16),
        RadioListTile<RadioOptions>(
          title: const Text('Option 1'),
          subtitle: Text('Default config'),
          value: RadioOptions.option1,
          groupValue: vm.character,
          onChanged: (RadioOptions? value) {
            vm.updateRadio(value);
          },
        ),
        RadioListTile<RadioOptions>(
          title: const Text('Option 2'),
          subtitle: Text('Default config'),
          value: RadioOptions.option2,
          groupValue: vm.character,
          onChanged: (RadioOptions? value) {
            vm.updateRadio(value);
          },
        ),
        RadioListTile<RadioOptions>(
          title: const Text('Option 3'),
          subtitle: Text('This is with "trailing" ListTileControlAffinity.'),
          value: RadioOptions.option2,
          groupValue: vm.character,
          onChanged: vm.updateRadio,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
        RadioListTile<RadioOptions>(
          value: RadioOptions.option2,
          onChanged: null,
          title: const Text('Option 4'),
          subtitle: Text('This option is disabled.'),
          groupValue: vm.character,
          controlAffinity: ListTileControlAffinity.trailing,
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
