# atco_ui

The project contains resources (fonts, colors, etc.) and theme configurations (light/dark) that are being used in almost all of the ATCO applications.

## Getting Started

This project is a package that contains the themes for the ATCO UI Design System. 
To run and view the template run the main.dart in the Example project.

To add to your project, reference the package in your pubspec.yaml.

## Usage
1. If you are looking for ATCO Material 3 theme, then add the following lines in your pubspec.yaml file.
```
  atco_ui:
    git:
      url: https://jtvd3m7fswzgkuc7fnigrm2tf6elfve2q74b5lxrhfsm5lg5em5q@dev.azure.com/atco-digital/ATCO%20UI/_git/ATCO%20UI
      ref: material_3
```
2. If you are looking for none Material 3 theme then add the following lines in the 'dependencies` scetion of your pubspec.yaml file. It is out dated anyways.
```
  atco_ui:
    git:
      url: https://jtvd3m7fswzgkuc7fnigrm2tf6elfve2q74b5lxrhfsm5lg5em5q@dev.azure.com/atco-digital/ATCO%20UI/_git/ATCO%20UI
```

2. Download the library by using `pub get`. It is better to delete `pubspec.loc` before updating the pub.

3. Refrence it in your app like 'AtcoColors.primary' or if you are configuring your theme like this:
```
import 'package:atco_ui/atco_ui.dart';

@override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      title: 'YOUR_APP',
      theme: AtcoTheme.lightTheme,
      darkTheme: AtcoTheme.darkTheme,
    );
  }
```