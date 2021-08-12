import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';

class UserTabBarController extends StatefulWidget {
  static const String id = "/userTabBarController";
  const UserTabBarController({Key? key}) : super(key: key);

  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<UserTabBarController>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Text("PixelApps NFT", style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      // drawer: Drawer(),
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: controller,
          tabs: [
            Tab(text: "HOME", icon: Icon(Icons.home)),
            Tab(text: "DISCOVER", icon: Icon(Icons.explore)),
            Tab(text: "PROFILE", icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          UserHomeScreen(),
          Container(
            child: Text("DISCOVER"),
          ),
          Container(
            child: Text("PROFILE"),
          ),
        ],
      ),
    );
  }
}
