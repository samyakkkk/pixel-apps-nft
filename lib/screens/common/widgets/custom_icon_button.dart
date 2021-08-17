import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;

  const CustomIconButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
