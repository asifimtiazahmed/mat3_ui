import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/utils/borders.dart';
import 'package:atco_ui/src/utils/extension_context.dart';
import 'package:atco_ui/src/widgets/buttons/atco_icon_button.dart';
import 'package:atco_ui/src/widgets/message_view/atco_message_type.dart';
import 'package:flutter/material.dart';

/// Message View
class AtcoMessageView extends StatelessWidget {
  /// Message View
  const AtcoMessageView({
    super.key,
    this.message = '',
    this.content,
    this.messageType = AtcoMessageType.blue1,
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
  final AtcoMessageType messageType;

  /// Icon Widget
  final Widget? icon;

  /// It should not be null if messageType is set to [AtcoMessageType.custom]
  final Color? backgroundColor;

  /// It should not be null if messageType is set to [AtcoMessageType.custom]
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
              AtcoIconButton(
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
      case AtcoMessageType.blue1:
      case AtcoMessageType.blue2:
        return isLightTheme ? AtcoColors.primary[95]! : AtcoColors.primary[80]!;
      case AtcoMessageType.grey1:
        return isLightTheme ? AtcoColors.neutral[95]! : AtcoColors.neutralDM[95]!;
      case AtcoMessageType.pink1:
      case AtcoMessageType.pink2:
        return isLightTheme ? AtcoColors.error[95]! : AtcoColors.error[50]!;
      case AtcoMessageType.green1:
      case AtcoMessageType.green2:
        return isLightTheme ? AtcoColors.tertiary2[95]! : AtcoColors.success[80]!;
      case AtcoMessageType.custom:
        return backgroundColor!;
    }
  }

  Color _getContentColor(bool isLightTheme) {
    switch (messageType) {
      case AtcoMessageType.blue1:
        return isLightTheme ? AtcoColors.neutral[10]! : AtcoColors.black;
      case AtcoMessageType.blue2:
        return isLightTheme ? AtcoColors.primary : AtcoColors.black;
      case AtcoMessageType.grey1:
        return isLightTheme ? AtcoColors.neutral[10]! : AtcoColors.white;
      case AtcoMessageType.pink1:
        return isLightTheme ? AtcoColors.neutral[10]! : AtcoColors.black;
      case AtcoMessageType.pink2:
        return isLightTheme ? AtcoColors.error : AtcoColors.black;
      case AtcoMessageType.green1:
        return isLightTheme ? AtcoColors.neutral[10]! : AtcoColors.black;
      case AtcoMessageType.green2:
        return isLightTheme ? AtcoColors.tertiary2[30]! : AtcoColors.black;
      case AtcoMessageType.custom:
        return contentColor!;
    }
  }

  Color _getIconColor(bool isDarkTheme) =>
      isDarkTheme && messageType == AtcoMessageType.grey1 ? AtcoColors.white : AtcoColors.black;
}
