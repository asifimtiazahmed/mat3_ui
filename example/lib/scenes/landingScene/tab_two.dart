import 'package:atco_ui/atco_ui.dart';
import 'package:flutter/material.dart';

class TabInputs extends StatefulWidget {
  const TabInputs({Key? key}) : super(key: key);

  @override
  State<TabInputs> createState() => _TabInputsState();
}

class _TabInputsState extends State<TabInputs> {
  // Inputs
  final _textController = TextEditingController();
  bool _validate = false;
  bool _validate2 = false;

  // Dropdown
  List<String> get dropdownOptions => ['This is DropdownButton', 'One', 'Two', 'Three'];
  String selectedOption = 'This is DropdownButton';
  void updateOption(String? newValue) => setState(() {
        selectedOption = newValue!;
      });

  List<String> get dropdownOptions2 => ['This is DropdownButtonFormField', 'One', 'Two', 'Three'];
  String selectedOption2 = 'This is DropdownButtonFormField';
  void updateOption2(String? newValue) => setState(() {
        selectedOption2 = newValue!;
        _validate2 = newValue == 'One';
      });

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Text('Inputs'),
          SizedBox(height: 16),
          TextFormField(
            keyboardType: TextInputType.multiline,
            maxLines: 1,
            style: TextStyle(height: 1),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: 'This is the hint text',
              label: Text('Label'),
              helperText: 'This is the Helper text that can be broken into two lines depends on the screen size.',
              helperMaxLines: 2,
              counterText: '0/20',
              contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              prefixIcon: Icon(Icons.ac_unit),
              suffixIcon: Icon(Icons.access_alarm),
            ),
          ),
          SizedBox(height: 16),
          TextFormField(
            controller: _textController,
            decoration: InputDecoration(
              label: Text('Error Field'),
              helperText: 'Write a character in order to see the error.',
              errorText: _validate ? 'This is error message. Clear the field.' : null,
              suffixIcon: AtcoIconButton(
                onPressed: () => setState(() {
                  _textController.text = '';
                  _validate = false;
                }),
                icon: Icon(Icons.clear),
              ),
            ),
            onChanged: (str) => setState(() {
              _validate = str.isNotEmpty;
            }),
          ),
          SizedBox(height: 16),
          TextFormField(
            enabled: false,
            decoration: InputDecoration(
              label: Text('Disabled Text Field'),
              helperText: 'This field is disabled',
              contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              prefixIcon: Icon(Icons.ac_unit),
              suffixIcon: Icon(Icons.access_alarm),
            ),
          ),
          SizedBox(height: 16),
          DropdownButton<String>(
            isExpanded: true,
            items: dropdownOptions.map<DropdownMenuItem<String>>((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            value: selectedOption,
            onChanged: updateOption,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 16),
          DropdownButtonFormField(
            isExpanded: true,
            items: dropdownOptions2.map<DropdownMenuItem<String>>((String option) {
              return DropdownMenuItem<String>(
                value: option,
                child: Text(option),
              );
            }).toList(),
            value: selectedOption2,
            onChanged: updateOption2,
            style: Theme.of(context).textTheme.titleMedium,
            decoration: InputDecoration(
              // helperStyle: Theme.of(context).textTheme.labelSmall,
              helperText: 'Select One to see the error message.',
              // errorStyle: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppColors.error),
              errorText: _validate2 ? 'This is error message. Choose another item to resolve the error.' : null,
              errorMaxLines: 2,
            ),
          ),
          SizedBox(height: 16),
          Divider(),
        ],
      ),
    );
  }
}
