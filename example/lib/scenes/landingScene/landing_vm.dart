
import 'package:flutter/foundation.dart';

enum RadioOptions { option1, option2 }

class LandingVM with ChangeNotifier {
  int selectedIndex = 0;
  List<bool> selectedToggleButton = [true, false, false];

  //Checkbox
  bool checkboxValue = false;

  updateCheckbox(newValue) {
    checkboxValue = newValue!;
    notifyListeners();
  }

  //ListTile
  bool listTileSelected = false;
  void toggleListTileSelected() {
    listTileSelected = !listTileSelected;
    notifyListeners();
  }

  //Switch
  bool switchValue = false;

  updateSwitch(newValue) {
    switchValue = newValue!;
    notifyListeners();
  }

  //Radio
  RadioOptions? character = RadioOptions.option1;
  updateRadio(newValue) {
    character = newValue!;
    notifyListeners();
  }

  buttonPressed() {
    print('Button pressed.');
  }

  void updateToggleButton(int index) {
    selectedToggleButton[index] = !selectedToggleButton[index];
    notifyListeners();
  }
}