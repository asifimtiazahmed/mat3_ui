import 'package:atco_ui/src/resources/atco_colors.dart';
import 'package:atco_ui/src/utils/extension_context.dart';
import 'package:flutter/material.dart';

/// AppIconButton is the implementation of IconButton in order to
/// respond to theme changes automatically.
class AtcoIconButton extends StatelessWidget {
  /// Constructor
  const AtcoIconButton({
    super.key,
    this.backgroundColor = AtcoColors.transparent,
    required this.icon,
    this.onPressed,
  });

  /// Background color of the icon
  final Color? backgroundColor;

  /// Icon Widget
  final Widget icon;

  /// Callback to be called when the button pressed.
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: const CircleBorder(),
      ),
      child: IconButton(
        color: context.isLightTheme ?  AtcoColors.neutral[10]: AtcoColors.neutral[90],
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
