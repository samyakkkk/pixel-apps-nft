import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/screens/common/initial_screen.dart';
import 'package:pixel_apps_ntf/screens/common/splash_screen.dart';
import 'package:pixel_apps_ntf/screens/creator/mint/mint.dart';
import 'package:pixel_apps_ntf/screens/creator/process/process.dart';
import 'package:pixel_apps_ntf/screens/creator/profile/profile.dart';
import 'package:pixel_apps_ntf/screens/creator/tab_controller/tab_controller.dart';
import 'package:pixel_apps_ntf/screens/creator/wallet/wallet.dart';
import 'package:pixel_apps_ntf/screens/user/auction/auction.dart';
import 'package:pixel_apps_ntf/screens/user/profile/profile.dart';
import 'package:pixel_apps_ntf/screens/user/tab_controller/tab_controller.dart';

class AppRouter {
  static Route router(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      // User
      case UserTabBarController.id:
        return MaterialPageRoute(builder: (_) => UserTabBarController());
      case AuctionScreen.id:
        return MaterialPageRoute(
            builder: (_) => AuctionScreen(status: args as String));
      case UserProfileScreen.id:
        return MaterialPageRoute(
            builder: (_) => UserProfileScreen(me: args as bool));

      // Creator
      case CreatorTabBarController.id:
        return MaterialPageRoute(builder: (_) => CreatorTabBarController());
      case CreatorProfile.id:
        return MaterialPageRoute(builder: (_) => CreatorProfile());
      case CreatorWallet.id:
        return MaterialPageRoute(builder: (_) => CreatorWallet());
      case MintScreen.id:
        return MaterialPageRoute(builder: (_) => MintScreen());
      case ProcessScreen.id:
        return MaterialPageRoute(builder: (_) => ProcessScreen());
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
