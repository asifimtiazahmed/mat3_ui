import 'package:atco_ui/src/resources/atco_strings.dart';
import 'package:atco_ui/src/widgets/dialog/atco_alert_dialog.dart';
import 'package:atco_ui/src/widgets/dialog/dialog_buttons.dart';
import 'package:atco_ui/src/widgets/loading/atco_loading.dart';
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
    builder: (_) => AtcoAlertDialog(
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
  String message = AtcoStrings.loadingMessage,
  EdgeInsets? insetPadding,
}) {
  return showDialog(
    context: context,
    // barrierDismissible: false,
    builder: (_) => AtcoAlertDialog(
      content: SizedBox(
        height: 100,
        child: AtcoLoading(message: message),
      ),
      insetPadding: insetPadding,
    ),
  );
}
