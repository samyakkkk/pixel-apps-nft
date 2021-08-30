import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/creator/tab_controller/tab_controller.dart';
import 'package:pixel_apps_ntf/screens/user/tab_controller/tab_controller.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'widgets/long_solid_button.dart';

class InitialScreen extends StatelessWidget {
  static const String id = "/initialScreen";
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      body: Padding(
        padding: EdgeInsets.all(sizes.pagePadding),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("NFT",
                        style: textStyles.kTextMediumText,
                        textAlign: TextAlign.right),
                    Center(
                        child: Image.asset(assets.brandLogoPng, height: 100)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LongSolidButton(
                      onPress: () => Navigator.pushNamedAndRemoveUntil(context,
                          CreatorTabBarController.id, (route) => false),
                      text: "Creator",
                      colorList: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple
                      ]),
                  Sizer(),
                  LongOutlinedButton(
                      onPress: () => Navigator.pushNamedAndRemoveUntil(
                          context, UserTabBarController.id, (route) => false),
                      text: "User",
                      colorList: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
