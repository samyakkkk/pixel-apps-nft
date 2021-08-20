import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/screens/creator/profile/profile.dart';
import 'package:pixel_apps_ntf/screens/creator/upload/upload.dart';
import 'package:pixel_apps_ntf/screens/user/discover/discover.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/screens/user/profile/profile.dart';
import 'package:pixel_apps_ntf/screens/user/search/search_popup.dart';

import '../../common/widgets/drawer_view.dart';

class CreatorTabBarController extends StatefulWidget {
  static const String id = "/creatorTabBarController";
  const CreatorTabBarController({Key? key}) : super(key: key);

  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<CreatorTabBarController>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: colors.kColorBackgroud,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(assets.brandLogoPng, width: 100),
            Text(" NFT", style: textStyles.kTextTitlePrimary),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(assets.search, width: sizes.pagePadding),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => SearchPopupScreen()));
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, size: sizes.pagePadding),
            onPressed: () => _key.currentState!.openDrawer(),
          ),
        ],
      ),
      drawerEnableOpenDragGesture: false,
      drawer: DrawerView(),
      body: Stack(
        children: [
          TabBarView(
            controller: controller,
            children: [
              CreatorProfile(),
              UploadArtWorkCreator(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(sizes.mediumPadding),
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(8, 5),
                      color: Colors.grey[400]!,
                      spreadRadius: 0.2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: GNav(
                        tabs: [
                          GButton(
                              gap: 10,
                              iconActiveColor: Colors.purple,
                              iconColor: Colors.black,
                              textColor: Colors.purple,
                              backgroundColor: Colors.purple.withOpacity(.2),
                              iconSize: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              icon: Icons.person,
                              text: "Profile"),
                          GButton(
                              gap: 10,
                              iconActiveColor: Colors.purple,
                              iconColor: Colors.black,
                              textColor: Colors.purple,
                              backgroundColor: Colors.purple.withOpacity(.2),
                              iconSize: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              icon: Icons.upload,
                              text: "Upload"),
                        ],
                        selectedIndex: controller.index,
                        onTabChange: (index) {
                          controller.animateTo(index);
                        })),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
