import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class CreatorProfile extends StatefulWidget {
  static const String id = "/creatorProfileScreen";
  const CreatorProfile({Key? key}) : super(key: key);

  @override
  _CreatorProfileState createState() => _CreatorProfileState();
}

class _CreatorProfileState extends State<CreatorProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: EdgeInsets.all(sizes.smallPadding),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 85,
                        left: sizes.mediumPadding,
                        right: sizes.mediumPadding,
                        bottom: sizes.regularPadding,
                      ),
                      child: Column(
                        children: [
                          Text("Kennedy Yanko",
                              style: textStyles.kTextTitlePrimary),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("52fs5ge5g45sov45a",
                                  style: textStyles.kTextRegular),
                              IconButton(
                                  onPressed: () {},
                                  padding: EdgeInsets.all(0),
                                  icon: SvgPicture.asset(assets.copy,
                                      height: sizes.mediumPadding,
                                      color: colors.kColorFontSecondary))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 90,
                  left: (MediaQuery.of(context).size.width / 2) - 70,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage:
                        NetworkImage("https://source.unsplash.com/random"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(sizes.mediumPadding),
            padding: EdgeInsets.all(sizes.regularPadding),
            decoration: BoxDecoration(
              color: colors.kColorBackgroudSecondary,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: SvgPicture.asset(assets.mail,
                                color: colors.kColorFontSecondary),
                            title: Text("Contact@OpenArt.design",
                                style: textStyles.kTextSubtitle),
                          ),
                          ListTile(
                            leading: SvgPicture.asset(assets.card,
                                color: colors.kColorFontSecondary),
                            title:
                                Text("Linked", style: textStyles.kTextSubtitle),
                          ),
                          ListTile(
                            leading: SvgPicture.asset(assets.call,
                                color: colors.kColorFontSecondary),
                            title: Text("(+60) 264 859 62",
                                style: textStyles.kTextSubtitle),
                          ),
                          ListTile(
                            leading: SvgPicture.asset(assets.link,
                                color: colors.kColorFontSecondary),
                            title: Text("OpenArt.design",
                                style: textStyles.kTextSubtitle),
                          ),
                        ],
                      ),
                    ),
                    ShadowContainer(
                        borderRadius: BorderRadius.circular(50),
                        child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(assets.edit,
                                color: colors.kColorFontSecondary))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side: BorderSide(color: colors.kColorFontSecondary),
                            borderRadius: BorderRadius.circular(5))),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(assets.heart,
                              height: sizes.semiLargePadding,
                              color: colors.kColorFontSecondary),
                          Sizer.halfHorizontal(),
                          Text("Follow", style: textStyles.kTextRegular),
                        ],
                      ),
                    ),
                    Sizer.horizontal(),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            side: BorderSide(color: colors.kColorFontSecondary),
                            borderRadius: BorderRadius.circular(100))),
                      ),
                      child: SvgPicture.asset(assets.upload,
                          height: sizes.semiLargePadding,
                          color: colors.kColorFontSecondary),
                    ),
                    Sizer.horizontal(),
                    OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: colors.kColorFontSecondary),
                          ),
                        ),
                      ),
                      child: SvgPicture.asset(assets.more,
                          height: sizes.semiLargePadding,
                          color: colors.kColorFontSecondary),
                    ),
                  ],
                ),
                Sizer(),
                Text("Memeber since 2021", style: textStyles.kTextSubtitle),
              ],
            ),
          ),
          Sizer.vertical24(),
          Padding(
            padding: EdgeInsets.all(sizes.mediumPadding),
            child: Text("My Items", style: textStyles.kTextMediumText),
          ),
          Padding(
            padding: EdgeInsets.all(sizes.mediumPadding),
            child: ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (_, __) => Column(
                      children: [
                        PostCard(
                            onPress: () {},
                            userProfileUrl:
                                "https://source.unsplash.com/random",
                            imageUrl: "https://source.unsplash.com/random",
                            title: "Silent Color",
                            userName: "asdasdad",
                            userType: "Creator"),
                        Sizer.half(),
                        SoldContainer(),
                      ],
                    ),
                separatorBuilder: (_, __) => Sizer(),
                itemCount: 5),
          ),
          Sizer(),
          Padding(
            padding: EdgeInsets.all(sizes.mediumPadding),
            child: LongOutlinedButton(
                onPress: () {},
                text: "Load more",
                colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
          ),
          Sizer.vertical64(),
        ],
      ),
    );
  }
}
