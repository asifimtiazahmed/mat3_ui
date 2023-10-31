import 'package:flutter/material.dart';

/// Default implementation of the Dialog to be used in the ATCO applications.
class Mat3AlertDialog extends StatelessWidget {
  /// Creates a dialog.
  ///
  /// Typically used in conjunction with [showDialog].
  const Mat3AlertDialog({
    super.key,
    this.content,
    this.description,
    this.title,
    this.showTitleDivider = false,
    this.showActionButtonsDivider = false,
    this.alignButtonsHorizontally = true,
    this.button1,
    this.button2,
    this.button3,
    this.insetPadding,
  });

  /// Title of the dialog
  final String? title;

  /// Text message that displays below the [title].
  final String? description;

  /// Content of the dialog that displays below the [description];
  final Widget? content;

  /// True if you want to arrange action buttons horizontally,vertically otherwise.
  final bool alignButtonsHorizontally;

  /// Action button 1
  final Widget? button1;

  /// Action button 2
  final Widget? button2;

  /// Action button 3
  final Widget? button3;

  /// To show or hide the divider between the [title] and the [description].
  /// It is False, by default.
  final bool showTitleDivider;

  /// To show or hide the divider on top of the bottom action buttons.
  /// It is False, by default.
  final bool showActionButtonsDivider;

  /// The amount of padding added to MediaQueryData.viewInsets on the outside of the dialog.
  /// This defines the minimum space between the screen's edges and the dialog.
  final EdgeInsets? insetPadding;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: insetPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildDialogTitle(context),
          if (showTitleDivider) const Divider() else Container(),
          _buildDescription(context),
          _buildContent(context),
          if (showActionButtonsDivider) const Divider() else Container(),
          if (alignButtonsHorizontally)
            _getHorizontalButtonsAlignment(context)
          else
            _getVerticalButtonsAlignment(context),
        ],
      ),
    );
  }

  Widget _getVerticalButtonsAlignment(BuildContext context) {
    var padding = const EdgeInsets.symmetric(horizontal: 24);
    if (content == null && description != null && !showActionButtonsDivider) {
      padding = const EdgeInsets.fromLTRB(24, 24, 24, 0);
    }
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          button1 ?? Container(),
          const SizedBox(width: 8),
          button2 ?? Container(),
          const SizedBox(width: 8),
          button3 ?? Container(),
        ],
      ),
    );
  }

  Widget _getHorizontalButtonsAlignment(BuildContext context) {
    var padding = const EdgeInsets.symmetric(horizontal: 24);
    if (content == null && description != null && !showActionButtonsDivider) {
      padding = const EdgeInsets.fromLTRB(24, 24, 24, 0);
    }
    return Padding(
      padding: padding,
      child: Row(
        children: [
          button3 ?? Container(),
          Expanded(child: Container()),
          button2 ?? Container(),
          const SizedBox(width: 8),
          button1 ?? Container(),
        ],
      ),
    );
  }

  Widget _buildDialogTitle(BuildContext context) {
    final temp = title;
    if (temp == null || temp.isEmpty) return Container();
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, showTitleDivider ? 24 : 8),
      child: Text(temp, style: Theme.of(context).textTheme.titleLarge),
    );
  }

  Widget _buildDescription(BuildContext context) {
    final temp = description;
    if (temp == null || temp.isEmpty) return Container();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: showTitleDivider ? 24 : 0),
      child: Text(
        temp,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    final temp = content;
    if (temp == null) return Container();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: temp,
    );
  }
}
