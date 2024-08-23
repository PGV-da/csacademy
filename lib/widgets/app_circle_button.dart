import 'package:flutter/material.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({
    super.key,
    required this.child,
    this.color,
    this.width = 60,
    required this.onTap,
  });
  final Widget child;
  final Color? color;
  final double width;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      child: InkWell(
        child: child,
      ),
    );
  }
}
