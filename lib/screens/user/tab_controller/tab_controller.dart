import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_apps_ntf/providers/common/theme_provider.dart';
import 'package:pixel_apps_ntf/res/res.dart';

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
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("PixelApps NFT"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read(themeProvider).switchTheme();
                setState(() {});
              },
              icon: Icon(Icons.light))
        ],
      ),
      drawer: Drawer(),
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: TabBar(
          indicatorColor: Colors.transparent,
          controller: controller,
          tabs: [
            Tab(text: "HOME", icon: Icon(Icons.home)),
            Tab(text: "EXPLORE", icon: Icon(Icons.explore)),
            Tab(text: "PROFILE", icon: Icon(Icons.person)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          Container(
            color: Colors.amber,
            child: Text(
              "HOME",
              style: TextStyle(color: colors.kColorWhite),
            ),
          ),
          Container(
            child: Text("EXPLORE"),
          ),
          Container(
            child: Text("PROFILE"),
          ),
        ],
      ),
    );
  }
}
