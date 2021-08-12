import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/user/home/widget/search_bar.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class UserHomeScreen extends StatelessWidget {
  static const String id = "/userHomeScreen";
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(sizes.mediumPadding),
        child: Column(
          children: [
            Text(
              "Discover, collect, and sell",
              style: textStyles.kTextMediumText,
            ),
            Sizer.half(),
            Text(
              "Your Digital Art",
              style: textStyles.kTextLargeText,
            ),
            Sizer.vertical24(),
            SearchBar(),
            Sizer.vertical20(),
            PostCard(
              imageUrl: "https://source.unsplash.com/random",
              userProfileUrl: "https://source.unsplash.com/random",
              title: "Silent Wave",
              userName: "Pawel Czerwinsk",
              userType: "Creator",
            ),
            Sizer(),
            RichText(
              text: TextSpan(
                text: "Reserve Price  ",
                style: textStyles.kTextRegular,
                children: [
                  TextSpan(
                      text: "1.50 ETH  ", style: textStyles.kTextTitlePrimary),
                  TextSpan(
                    text: "\$2,683.73",
                    style: textStyles.kTextMediumText,
                  ),
                ],
              ),
            ),
            Sizer(),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: sizes.mediumPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple,
                      ],
                    )),
                child: Text("Place a bid",
                    textAlign: TextAlign.center,
                    style: textStyles.kTextBtnText.copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
            Sizer.half(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                      colors: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple,
                      ],
                    )),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: sizes.mediumPadding),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colors.kColorBackgroud),
                  child: Text("View Artwork",
                      textAlign: TextAlign.center,
                      style: textStyles.kTextBtnText),
                ),
              ),
            ),
            Sizer.vertical48(),
            ListTile(
              title: Text("Live auctions", style: textStyles.kTextTitlePrimary),
              trailing:
                  OutlinedButton(onPressed: () {}, child: Text("View all")),
            ),
            Sizer.vertical24(),
            ListView.separated(
                separatorBuilder: (_, __) => Sizer.vertical48(),
                shrinkWrap: true,
                primary: false,
                itemCount: 5,
                itemBuilder: (_, i) => Column(
                      children: [
                        PostCard(
                          imageUrl: "https://source.unsplash.com/random",
                          userProfileUrl: "https://source.unsplash.com/random",
                          title: "Silent Wave $i",
                          userName: "Pawel Czerwinsk $i",
                          userType: "Creator",
                        ),
                        Sizer.half(),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          width: double.infinity,
                          padding: EdgeInsets.all(sizes.mediumPadding),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: "Sold For ",
                              style: textStyles.kTextRegular
                                  .copyWith(fontSize: 20),
                              children: [
                                TextSpan(
                                    text: "2.00 ETH",
                                    style: textStyles.kTextRegular.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
          ],
        ),
      ),
    );
  }
}
