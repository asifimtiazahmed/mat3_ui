import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui_eg/scenes/dialogScene/dialog_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogScene extends StatelessWidget {
  const DialogScene({super.key});

  final String title = 'What is Lorem Ipsum?';
  final String description =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialogs')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              'Tap on the buttons in order to see the dialogs.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                OutlinedButton(
                  onPressed: () => _showDialog1(context, true),
                  child: Text('Dialog 1'),
                ),
                OutlinedButton(
                  onPressed: () => _showDialog1(context, false),
                  child: Text('Dialog 2'),
                ),
                OutlinedButton(
                  onPressed: () => _showDialog2(context, true),
                  child: Text('Dialog 3'),
                ),
                OutlinedButton(
                  onPressed: () => _showDialog2(context, false),
                  child: Text('Dialog 4'),
                ),
                OutlinedButton(
                  onPressed: () => displayMessage(
                    context,
                    title: 'Success Title',
                    message: 'Yay! You are awesome. This is a sample success message.',
                  ),
                  child: Text('Success!'),
                ),
                OutlinedButton(
                  onPressed: () => displayMessage(
                    context,
                    title: 'Failure Title',
                    message: 'Ah, Something went wrong!',
                  ),
                  child: Text('Failure!'),
                ),
                OutlinedButton(
                  onPressed: () => displayLoadingMessage(context),
                  child: Text('Loading...'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog1(BuildContext context, bool isHorizontalActionButton) {
    return showDialog(
      context: context,
      builder: (_) => Mat3AlertDialog(
        title: title,
        description: description,
        alignButtonsHorizontally: isHorizontalActionButton,
        button3: dialogCloseButton(context),
        button2: dialogCloseButton(context, text: 'Action 2'),
        button1: dialogCloseButton(context, text: 'Action 1'),
      ),
    );
  }

  Future<void> _showDialog2(BuildContext context, bool isHorizontalActionButton) {
    return showDialog(
      context: context,
      builder: (_) => ChangeNotifierProvider<DialogVM>(
        create: (_) => DialogVM(),
        child: Consumer<DialogVM>(
          builder: (_, vm, __) {
            return Mat3AlertDialog(
              title: title,
              showTitleDivider: true,
              showActionButtonsDivider: true,
              alignButtonsHorizontally: isHorizontalActionButton,
              button3: dialogCloseButton(context),
              button2: dialogCloseButton(context, text: 'Action 2'),
              button1: dialogCloseButton(context, text: 'Action 1'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 24),
                  RadioListTile(
                    title: Text('I don\'t know'),
                    value: RadioOptions.option1,
                    groupValue: vm.character,
                    onChanged: vm.updateRadio,
                  ),
                  RadioListTile(
                    title: Text('Lorem ipsum dolor sit ame'),
                    value: RadioOptions.option2,
                    groupValue: vm.character,
                    onChanged: vm.updateRadio,
                  ),
                  RadioListTile(
                    title: Text('consectetur adipiscing elit'),
                    value: RadioOptions.option3,
                    groupValue: vm.character,
                    onChanged: vm.updateRadio,
                  ),
                  RadioListTile(
                    title: Text('sed do eiusmod tempor incididunt'),
                    value: RadioOptions.option4,
                    groupValue: vm.character,
                    onChanged: vm.updateRadio,
                  ),
                  RadioListTile(
                    title: Text('ut labore et dolore magna aliqua'),
                    value: RadioOptions.option5,
                    groupValue: vm.character,
                    onChanged: vm.updateRadio,
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
