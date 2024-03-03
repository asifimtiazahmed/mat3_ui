import 'dart:ui';
import 'package:material_ui/mat3_ui.dart';
import 'package:material_ui/src/resources/mat3_colors.dart';
import 'package:flutter/material.dart';

///The FrostButton in part of the material3_ui, any updates to this button needs to go
///through the mat3_ui repo
class FrostedButton extends StatefulWidget {
  /// Addition to the material3_ui, the frosted glass button. Made March 2, 2024 by Asif Imtiaz Ahmed
  const FrostedButton(
      {required this.onPressed, super.key,
      this.child,
      this.width = 150,
      this.height = 45,
      this.buttonColor,
      this.buttonText});

  ///Either provide a child, or a buttonText, but not both
  final Widget? child;

  ///Either provide a child, or a buttonText, but not both. This will be the text on the button
  final String? buttonText;

  ///manually override the height of the button
  final double height;

  ///manually override the width of the button
  final double width;

  ///manually override the button color, by default it is the themes primary
  final Color? buttonColor;

  ///The call back for this button
  final Function() onPressed;

  @override
  State<FrostedButton> createState() => _FrostedButtonState();
}

class _FrostedButtonState extends State<FrostedButton> with SingleTickerProviderStateMixin {
  double _buttonScale = 1;
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  ///this should be between 0.0 to 1
  @override
  Widget build(BuildContext context) {
    _buttonScale = 1 - _animationController.value;
    final Color themeColor = context.isLightTheme ? Mat3Colors.primary : Mat3Colors.neutralDM;
    final selectedColor = widget.buttonColor ?? themeColor;
    return GestureDetector(
      onTapDown: (_) => _startAnimation(),
      onTapUp: (_) {
        _stopAnimation();
        widget.onPressed.call();
      },
      onTapCancel: _stopAnimation,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Transform.scale(
          scale: _buttonScale,
          child: DecoratedBox(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), boxShadow: [
              BoxShadow(color: selectedColor.withOpacity(0.25), blurRadius: 10, offset: Offset(0, 8)),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: widget.width,
                height: widget.height,
                color: selectedColor,
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 10),
                      child: Container(),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white.withOpacity(0.25)),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.white.withOpacity(0.25), Colors.white.withOpacity(0.05)])),
                    ),
                    Center(
                      child: widget.child ??
                          Text(
                            widget.buttonText ?? '',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(color: context.isLightTheme ? Mat3Colors.white : Mat3Colors.primary),
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _startAnimation() {
    _animationController.forward();
  }

  void _stopAnimation() {
    _animationController.reverse();
  }
}
