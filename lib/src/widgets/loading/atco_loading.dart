import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/resources/atco_strings.dart';
import 'package:atco_ui/src/utils/extension_context.dart';
import 'package:flutter/material.dart';

/// Loading widget with predefined message.
class AtcoLoading extends StatelessWidget {
  /// Constructor
  const AtcoLoading({super.key, this.message});

  /// The message will be shown.
  /// If "null" then the predefined message will be used.
  final String? message;

  @override
  Widget build(BuildContext context) {
    final loadingColor = context.isLightTheme ? AtcoColors.primary : AtcoColors.primary[80];

    return Row(
      children: [
        CircularProgressIndicator(color: loadingColor),
        const SizedBox(width: 16),
        Flexible(
          child: Text(
            message ?? AtcoStrings.loadingMessage,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
