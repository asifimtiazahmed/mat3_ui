# mat3_ui

The project contains resources (fonts, colors, etc.) and theme configurations (light/dark).

## Getting Started

This project is a package that contains the themes for my individual use:
To run and view the template run the main.dart in the Example project.

To add to your project, reference the package in your pubspec.yaml.

## Usage
1. If you are looking for Material 3 theme, then add the following lines in your pubspec.yaml file.
```
  mat3_ui:
    git:
      url: https://github.com/asifimtiazahmed/mat3_ui.git
      ref: main
```

2. Refrence it in your app like 'Mat3Colors.primary' or if you are configuring your theme like this:
```
import 'package:mat3_ui/Mat3_ui.dart';

@override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'YOUR_APP',
      theme: Mat3Theme.lightTheme,
      darkTheme: Mat3Theme.darkTheme,
    );
  }
```