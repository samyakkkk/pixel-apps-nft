import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;

  const CustomIconButton({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(-4, 2),
            color: Colors.grey[200]!,
            spreadRadius: 0.2,
          ),
        ],
        borderRadius: BorderRadius.circular(100),
      ),
      child: child,
    );
  }
}
