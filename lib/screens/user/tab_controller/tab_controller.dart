import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/account.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/drawer_view.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/notification.dart';
import 'package:pixel_apps_ntf/screens/user/discover/discover.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/screens/user/profile/profile.dart';
import 'package:pixel_apps_ntf/screens/user/search/search_popup.dart';

class UserTabBarController extends StatefulWidget {
  static const String id = "/userTabBarController";
  const UserTabBarController({Key? key}) : super(key: key);

  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<UserTabBarController>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: colors.kColorBackgroud,
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   initializeResources(context: context, dark: false);
      //   setState(() {});
      // }),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actionsIconTheme: IconThemeData(color: colors.kColorFontPrimary),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(assets.brandLogoPng, width: 100),
            Text(" NFT", style: textStyles.kTextTitlePrimary),
          ],
        ),
        actions: [
          Visibility(
              visible: controller.index == 2,
              child: IconButton(
                icon: SvgPicture.asset(assets.bell,
                    width: sizes.pagePadding,
                    color: colors.kColorFontSecondary),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => Dialog(
                            backgroundColor: colors.kColorBackgroud,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: NotificationDialog(),
                          ));
                },
              )),
          Visibility(
              visible: controller.index == 2,
              child: IconButton(
                icon: SvgPicture.asset(assets.account,
                    width: sizes.pagePadding,
                    color: colors.kColorFontSecondary),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => Dialog(
                            backgroundColor: colors.kColorBackgroud,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: AccountDialog(),
                          )).then((value) => setState(() {}));
                },
              )),
          Visibility(
              visible: controller.index == 1,
              child: IconButton(
                icon: SvgPicture.asset(assets.search,
                    width: sizes.pagePadding,
                    color: colors.kColorFontSecondary),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => SearchPopupScreen()));
                },
              )),
          IconButton(
            icon: Icon(Icons.menu,
                size: sizes.pagePadding, color: colors.kColorFontSecondary),
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
              UserHomeScreen(),
              UserDiscoverScreen(),
              UserProfileScreen(me: true),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(sizes.mediumPadding),
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: colors.kColorBackgroud,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(8, 5),
                      color: colors.kColorShadow,
                      spreadRadius: 0.2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: colors.kColorBackgroud,
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: GNav(
                        tabs: [
                          GButton(
                              gap: 10,
                              iconActiveColor: colors.kColorBtnPurple,
                              iconColor: colors.kColorFontPrimary,
                              textColor: colors.kColorBtnPurple,
                              backgroundColor:
                                  colors.kColorBtnPurple.withOpacity(.2),
                              iconSize: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              icon: Icons.home,
                              text: "Home"),
                          GButton(
                              gap: 10,
                              iconActiveColor: colors.kColorBtnPurple,
                              iconColor: colors.kColorFontPrimary,
                              textColor: colors.kColorBtnPurple,
                              backgroundColor:
                                  colors.kColorBtnPurple.withOpacity(.2),
                              iconSize: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              icon: Icons.explore,
                              text: "Discover"),
                          GButton(
                              gap: 10,
                              iconActiveColor: colors.kColorBtnPurple,
                              iconColor: colors.kColorFontPrimary,
                              textColor: colors.kColorBtnPurple,
                              backgroundColor:
                                  colors.kColorBtnPurple.withOpacity(.2),
                              iconSize: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18, vertical: 8),
                              icon: Icons.person,
                              text: "Profile"),
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
