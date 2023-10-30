import 'package:flutter/material.dart';

/// Dialog Close Button
Widget dialogCloseButton(
  BuildContext context, {
  String text = 'Close',
  VoidCallback? onClose,
}) {
  return dialogTextButton(
    context,
    text,
    onClick: () {
      // Close this dialog
      Navigator.of(context).pop();
      if (onClose != null) onClose();
    },
  );
}

/// Dialog Text Button
Widget dialogTextButton(BuildContext context, String text, {VoidCallback? onClick}) {
  return TextButton(
    onPressed: () {
      if (onClick != null) onClick();
    },
    child: Text(text),
  );
}
