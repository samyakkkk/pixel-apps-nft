import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget {
  static const String id = "/initialScreen";
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(onPressed: () {}, child: Text("User")),
          ElevatedButton(onPressed: () {}, child: Text("Creator")),
        ],
      ),
    );
  }
}
