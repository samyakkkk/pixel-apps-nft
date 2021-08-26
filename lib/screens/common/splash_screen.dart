import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/initial_screen.dart';
import 'package:pixel_apps_ntf/screens/creator/tab_controller/tab_controller.dart';
import 'package:pixel_apps_ntf/screens/user/tab_controller/tab_controller.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/splashScreen";
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      initializeResources(context: context);
      Future.delayed(Duration(seconds: 2),
          () => Navigator.pushReplacementNamed(context, InitialScreen.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/image/logo.png", height: 50),
      ),
    );
  }
}
