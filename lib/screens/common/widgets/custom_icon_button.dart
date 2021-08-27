import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;

  const CustomIconButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.kColorBackgroud,
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
