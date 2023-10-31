import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui/src/utils/borders.dart';
import 'package:flutter/material.dart';

/// Card with Action buttons
class ActionCard extends StatelessWidget {
  /// Constructor
  const ActionCard({
    super.key,
    required this.child,
    this.title = '',
    this.semanticLabel,
    this.action,
    this.backgroundColor,
  });

  /// Title for the card
  final String title;

  /// Semantic Label
  final String? semanticLabel;

  /// It is required to have a child for the card
  final Widget child;

  /// Action button or a group of buttons wrapped in a [Widget].
  final Widget? action;

  /// Background color of the card.
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor ?? (context.isLightTheme ? Mat3Colors.neutral[95] : Mat3Colors.neutralDM[95]);

    return Card(
      color: bgColor,
      shape: rectWithRadius4,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 4),
            child: ActionCardHeader(
              title: title,
              action: action,
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}

/// ActionCardHeader Widget
class ActionCardHeader extends StatelessWidget {
  /// Constructor
  const ActionCardHeader({
    super.key,
    required this.title,
    this.action,
  });

  /// Title
  final String title;

  /// Action button
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    if (title.isEmpty) return Container();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Text(title, style: Theme.of(context).textTheme.headlineSmall),
        ),
        if (action != null)
          Row(
            children: [
              const SizedBox(width: 8),
              action ?? Container(),
            ],
          ),
      ],
    );
  }
}
