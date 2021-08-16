import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  final Widget child;

  const ShadowContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(-8, 4),
            color: Colors.grey[200]!,
            spreadRadius: 0.2,
          ),
        ],
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}