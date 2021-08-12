import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/screens/common/initial_screen.dart';
import 'package:pixel_apps_ntf/screens/common/splash_screen.dart';
import 'package:pixel_apps_ntf/screens/user/tab_controller/tab_controller.dart';

class AppRouter {
  static Route router(RouteSettings settings) {
    // final dynamic args = settings.arguments;
    switch (settings.name) {
      // User
      case UserTabBarController.id:
        return MaterialPageRoute(builder: (_) => UserTabBarController());

      // Creator

      // Common
      case SplashScreen.id:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case InitialScreen.id:
        return MaterialPageRoute(builder: (_) => InitialScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
