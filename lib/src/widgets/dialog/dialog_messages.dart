import 'package:material_ui/src/resources/mat3_strings.dart';
import 'package:material_ui/src/widgets/dialog/mat3_alert_dialog.dart';
import 'package:material_ui/src/widgets/dialog/dialog_buttons.dart';
import 'package:material_ui/src/widgets/loading/mat3_loading.dart';
import 'package:flutter/material.dart';

/// Default dialog to be used when you want to display a message.
Future<void> displayMessage(
  BuildContext context, {
  String? title,
  String? message,
  EdgeInsets? insetPadding,
}) {
  return showDialog(
    context: context,
    builder: (_) => Mat3AlertDialog(
      title: title,
      description: message,
      insetPadding: insetPadding,
      button3: dialogCloseButton(context),
    ),
  );
}

/// Default dialog to be used when you want to display a loading message.
Future<void> displayLoadingMessage(
  BuildContext context, {
  String message = Mat3Strings.loadingMessage,
  EdgeInsets? insetPadding,
}) {
  return showDialog(
    context: context,
    // barrierDismissible: false,
    builder: (_) => Mat3AlertDialog(
      content: SizedBox(
        height: 100,
        child: Mat3Loading(message: message),
      ),
      insetPadding: insetPadding,
    ),
  );
}
