import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/utils/borders.dart';
import 'package:material_ui/src/utils/extension_context.dart';
import 'package:material_ui/src/widgets/buttons/mat3_icon_button.dart';
import 'package:material_ui/src/widgets/message_view/mat3_message_type.dart';
import 'package:flutter/material.dart';

/// Message View
class Mat3MessageView extends StatelessWidget {
  /// Message View
  const Mat3MessageView({
    super.key,
    this.message = '',
    this.content,
    this.messageType = Mat3MessageType.blue1,
    this.icon,
    this.backgroundColor,
    this.contentColor,
    this.onTap,
  });

  /// Text Message
  final String message;

  /// Content widget displays if message is empty
  final Widget? content;

  /// Message Type
  final Mat3MessageType messageType;

  /// Icon Widget
  final Widget? icon;

  /// It should not be null if messageType is set to [Mat3MessageType.custom]
  final Color? backgroundColor;

  /// It should not be null if messageType is set to [Mat3MessageType.custom]
  final Color? contentColor;

  /// Close button displays if the function is not null.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final leadingIcon = icon ?? Icon(Icons.error_outline, size: 24, color: _getContentColor(context.isLightTheme));

    return Card(
      color: _getCardBackgroundColor(context.isLightTheme),
      shape: rectWithRadius6,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            leadingIcon,
            if(icon == null) const SizedBox(width: 12),
            Expanded(
              child: message.isEmpty ? content ?? const SizedBox.shrink() : Text(
                message,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: _getContentColor(context.isLightTheme)),
              ),
            ),
            if (onTap != null)
              Mat3IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.clear,
                  size: 24,
                  color: _getIconColor(context.isDarkTheme),
                ),
              )
          ],
        ),
      ),
    );
  }

  Color _getCardBackgroundColor(bool isLightTheme) {
    switch (messageType) {
      case Mat3MessageType.blue1:
      case Mat3MessageType.blue2:
        return isLightTheme ? Mat3Colors.jonquil[95]! : Mat3Colors.jonquil[80]!;
      case Mat3MessageType.grey1:
        return isLightTheme ? Mat3Colors.seaGreen[95]! : Mat3Colors.linen[95]!;
      case Mat3MessageType.pink1:
      case Mat3MessageType.pink2:
        return isLightTheme ? Mat3Colors.error[95]! : Mat3Colors.error[50]!;
      case Mat3MessageType.green1:
      case Mat3MessageType.green2:
        return isLightTheme ? Mat3Colors.tertiary2[95]! : Mat3Colors.success[80]!;
      case Mat3MessageType.custom:
        return backgroundColor!;
    }
  }

  Color _getContentColor(bool isLightTheme) {
    switch (messageType) {
      case Mat3MessageType.blue1:
        return isLightTheme ? Mat3Colors.seaGreen[10]! : Mat3Colors.black;
      case Mat3MessageType.blue2:
        return isLightTheme ? Mat3Colors.jonquil : Mat3Colors.black;
      case Mat3MessageType.grey1:
        return isLightTheme ? Mat3Colors.seaGreen[10]! : Mat3Colors.white;
      case Mat3MessageType.pink1:
        return isLightTheme ? Mat3Colors.seaGreen[10]! : Mat3Colors.black;
      case Mat3MessageType.pink2:
        return isLightTheme ? Mat3Colors.error : Mat3Colors.black;
      case Mat3MessageType.green1:
        return isLightTheme ? Mat3Colors.seaGreen[10]! : Mat3Colors.black;
      case Mat3MessageType.green2:
        return isLightTheme ? Mat3Colors.tertiary2[30]! : Mat3Colors.black;
      case Mat3MessageType.custom:
        return contentColor!;
    }
  }

  Color _getIconColor(bool isDarkTheme) =>
      isDarkTheme && messageType == Mat3MessageType.grey1 ? Mat3Colors.white : Mat3Colors.black;
}
