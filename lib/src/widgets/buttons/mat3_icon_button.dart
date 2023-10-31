import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:material_ui/src/utils/extension_context.dart';
import 'package:flutter/material.dart';

/// AppIconButton is the implementation of IconButton in order to
/// respond to theme changes automatically.
class Mat3IconButton extends StatelessWidget {
  /// Constructor
  const Mat3IconButton({
    super.key,
    this.backgroundColor = Mat3Colors.transparent,
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
        color: context.isLightTheme ?  Mat3Colors.neutral[10]: Mat3Colors.neutral[90],
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
