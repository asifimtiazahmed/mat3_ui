
import 'package:flutter/material.dart';

enum RadioOptions { option1, option2, option3, option4, option5 }

class DialogVM with ChangeNotifier {

  //Radio
  RadioOptions? character = RadioOptions.option1;
  updateRadio(RadioOptions? newValue) {
    character = newValue!;
    notifyListeners();
  }
}