import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;

  const ShadowContainer({
    Key? key,
    this.borderRadius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.kColorBackgroudSecondary,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(-8, 4),
            color: colors.kColorShadow,
            spreadRadius: 0.2,
          ),
        ],
        borderRadius: borderRadius ?? BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
