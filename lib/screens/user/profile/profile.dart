import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class UserProfileScreen extends StatefulWidget {
  static const String id = "/userProfileScreen";
  final bool me;
  const UserProfileScreen({Key? key, required this.me}) : super(key: key);

  static const int itemCount = 5;

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class SocialModel {
  final String value;
  final String asset;

  SocialModel({required this.value, required this.asset});
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool edit = false;
  List<SocialModel> _socialAccounts = [
    SocialModel(value: "@openart", asset: assets.twitter),
    SocialModel(value: "@openart.design", asset: assets.instagram),
    SocialModel(value: "Openart.design", asset: assets.link),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding:
                    EdgeInsets.only(top: widget.me ? 0 : sizes.mediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(visible: !widget.me, child: Sizer.vertical64()),
                    Container(
                      height: edit ? 360 : 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Stack(
                        children: [
                          Column(
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: colors.kColorBackgroud,
                                        borderRadius: BorderRadius.circular(52),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(assets.more,
                                              color: colors.kColorFontSecondary,
                                              height: sizes.semiLargePadding)),
                                    ),
                                    Sizer.horizontal(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: colors.kColorBackgroud,
                                        borderRadius: BorderRadius.circular(52),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(assets.upload,
                                              height: sizes.semiLargePadding,
                                              color:
                                                  colors.kColorFontSecondary)),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: edit ? 200 : 240,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("52fs5ge5g45sov45a",
                                            style: textStyles.kTextRegular),
                                        IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.all(0),
                                            icon: SvgPicture.asset(assets.copy,
                                                height: sizes.mediumPadding,
                                                color: colors
                                                    .kColorFontSecondary)),
                                      ],
                                    ),
                                    Sizer(),
                                    Visibility(
                                      visible: !edit,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("150",
                                                  style: textStyles
                                                      .kTextLargeText),
                                              Sizer.halfHorizontal(),
                                              Text("Following",
                                                  style:
                                                      textStyles.kTextSubtitle),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("1024",
                                                  style: textStyles
                                                      .kTextLargeText),
                                              Sizer.halfHorizontal(),
                                              Text("Followers",
                                                  style:
                                                      textStyles.kTextSubtitle),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: widget.me
                                                ? () {
                                                    setState(() {
                                                      edit = !edit;
                                                    });
                                                  }
                                                : () {},
                                            child: ShadowContainer(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: sizes
                                                          .semiLargePadding,
                                                      vertical:
                                                          sizes.regularPadding),
                                                  child: widget.me
                                                      ? SvgPicture.asset(
                                                          assets.edit,
                                                          color: colors
                                                              .kColorFontSecondary)
                                                      : Text("Follow",
                                                          style: textStyles
                                                              .kTextBtnText)),
                                            ),
                                          ),
                                        ],
                                      ),
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
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(sizes.mediumPadding),
                      child: edit
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Enter your details",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: colors.kColorBackgroudSecondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "Name",
                                      hintStyle: textStyles.kTextRegular,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: colors.kColorBackgroudSecondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "User Name",
                                      hintStyle: textStyles.kTextRegular,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Sizer.vertical24(),
                                Text("Enter your email",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: colors.kColorBackgroudSecondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "Email",
                                      hintStyle: textStyles.kTextRegular,
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Sizer.qtr(),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: sizes.tinyPadding),
                                  child: Text(
                                      "Add your email address to receive notifications about your activity on Foundation. This will not be shown on your profile.",
                                      style: textStyles.kTextRegular
                                          .copyWith(fontSize: 13)),
                                ),
                                Sizer.vertical24(),
                                Text("Enter your bio",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: colors.kColorBackgroudSecondary,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
                                      hintStyle: textStyles.kTextRegular,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: sizes.smallPadding,
                                          horizontal: sizes.smallPadding),
                                      hintText: "Enter your bio",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Sizer.vertical24(),
                                Text("Upload a profile image.",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: colors.kColorBackgroudSecondary,
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.image,
                                        color: colors.kColorFontSecondary,
                                      ),
                                      Text("Browse a file",
                                          style: textStyles.kTextTitle),
                                      Text(
                                          "Recommended size: JPG, PNG, GIF\n(1500x1500px, Max 10mb)",
                                          style: textStyles.kTextSubtitle,
                                          textAlign: TextAlign.center)
                                    ],
                                  ),
                                ),
                                Sizer.vertical32(),
                                Text("Verify your profile",
                                    style: textStyles.kTextTitlePrimary),
                                Sizer.half(),
                                Text(
                                    "Show the Foundation community that your profile is authentic.",
                                    style: textStyles.kTextSubtitle),
                                Sizer.vertical24(),
                                LongOutlinedButton(
                                    onPress: () {},
                                    text: "Verify via Twitter",
                                    colorList: [
                                      colors.kColorFontPrimary,
                                      colors.kColorFontPrimary
                                    ]),
                                Sizer.half(),
                                LongOutlinedButton(
                                    onPress: () {},
                                    text: "Verify via Instagram",
                                    colorList: [
                                      colors.kColorFontPrimary,
                                      colors.kColorFontPrimary
                                    ]),
                                Sizer.vertical24(),
                                Text("Add links to your social media profiles.",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                LinkField(
                                  hint: "Website",
                                  leading: SvgPicture.asset(assets.link,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.half(),
                                LinkField(
                                  hint: "Discord",
                                  leading: SvgPicture.asset(assets.discord,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.half(),
                                LinkField(
                                  hint: "Instagram",
                                  leading: SvgPicture.asset(assets.instagram,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.half(),
                                LinkField(
                                  hint: "Youtube Channel",
                                  leading: SvgPicture.asset(assets.youtube,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.half(),
                                LinkField(
                                  hint: "Facebook",
                                  leading: SvgPicture.asset(assets.facebook,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.half(),
                                LinkField(
                                  hint: "TikTok",
                                  leading: SvgPicture.asset(assets.tiktok,
                                      color: colors.kColorBtnBlue),
                                ),
                                Sizer.vertical20(),
                                LongSolidButton(
                                    onPress: () {
                                      setState(() {
                                        edit = !edit;
                                      });
                                    },
                                    text: "Save",
                                    colorList: [
                                      colors.kColorBtnBlue,
                                      colors.kColorBtnPurple,
                                    ])
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: !widget.me,
                                  child: Text("Followed by",
                                      style: textStyles.kTextRegular
                                          .copyWith(fontSize: 20)),
                                ),
                                Visibility(visible: !widget.me, child: Sizer()),
                                Visibility(
                                  visible: !widget.me,
                                  child: Container(
                                    height: 50,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            left: 0,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.amber,
                                            )),
                                        Positioned(
                                            left: 14,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.blue,
                                            )),
                                        Positioned(
                                            left: 29,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.pink,
                                            )),
                                        Positioned(
                                            left: 44,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.purple,
                                            )),
                                        Positioned(
                                            left: 59,
                                            child: CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.red,
                                            )),
                                        Positioned(
                                            left: 74,
                                            child: CircleAvatar(radius: 15)),
                                      ],
                                    ),
                                  ),
                                ),
                                Visibility(
                                  visible: !widget.me,
                                  child: Text(
                                    "Trevor Jackson is a multi-disciplinary artist exploring analog + digital realms since 1988. Collaborators inc Apple, BMW, Comme Des Garçons, ICA, NTS, Sonos,  Stone Island, Tate Modern + Warp.",
                                    style: textStyles.kTextRegular,
                                  ),
                                ),
                                Visibility(
                                    visible: !widget.me,
                                    child: Sizer.vertical24()),
                                Text(
                                  "Member since 2021",
                                  style: textStyles.kTextSubtitle,
                                  textAlign: widget.me
                                      ? TextAlign.center
                                      : TextAlign.start,
                                ),
                                Visibility(
                                    visible: !widget.me,
                                    child: Sizer.vertical24()),
                                Visibility(
                                  visible: !widget.me,
                                  child: Wrap(
                                    spacing: 10,
                                    runSpacing: 5,
                                    children: _socialAccounts
                                        .map((e) => ShadowContainer(
                                              borderRadius:
                                                  BorderRadius.circular(52),
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    sizes.smallPadding),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SvgPicture.asset(e.asset,
                                                        color: colors
                                                            .kColorFontPrimary),
                                                    Sizer.halfHorizontal(),
                                                    Text(
                                                      e.value,
                                                      style:
                                                          textStyles.kTextTitle,
                                                    ),
                                                    Sizer.halfHorizontal(),
                                                  ],
                                                ),
                                              ),
                                            ))
                                        .toList(),
                                  ),
                                ),
                                Sizer.vertical32(),
                                // TODO make it button
                                UserProfileScreen.itemCount == 0
                                    ? SizedBox.shrink()
                                    : Row(
                                        children: [
                                          Text("Created",
                                              style: textStyles.kTextLargeText),
                                          Sizer.horizontal(),
                                          Text("Collected",
                                              style: textStyles.kTextMediumText
                                                  .copyWith(
                                                      color: colors
                                                          .kColorBackgroudSecondary)),
                                        ],
                                      ),
                                Sizer.vertical24(),
                                UserProfileScreen.itemCount == 0
                                    ? Column(
                                        children: [
                                          Text("Your collection is empty.",
                                              style:
                                                  textStyles.kTextTitlePrimary),
                                          Sizer.half(),
                                          Text(
                                              "Start building your collection by placing bids on artwork.",
                                              textAlign: TextAlign.center,
                                              style: textStyles.kTextSubtitle),
                                        ],
                                      )
                                    : ListView.separated(
                                        separatorBuilder: (_, __) => Sizer(),
                                        primary: false,
                                        shrinkWrap: true,
                                        itemCount: UserProfileScreen.itemCount,
                                        itemBuilder: (_, i) => Column(
                                          children: [
                                            PostCard(
                                              onPress: () {},
                                              userProfileUrl:
                                                  "https://source.unsplash.com/random",
                                              imageUrl:
                                                  "https://source.unsplash.com/random",
                                              title: "Silent Color",
                                              userName: "Pawel Czerwinski",
                                              userType: "Creator",
                                            ),
                                            Sizer(),
                                            SoldContainer(),
                                          ],
                                        ),
                                      ),
                                Sizer.vertical24(),
                                Visibility(
                                  visible: UserProfileScreen.itemCount != 0,
                                  child: LongOutlinedButton(
                                    onPress: () {},
                                    text: "Load more",
                                    colorList: [
                                      colors.kColorBtnBlue,
                                      colors.kColorBtnPurple
                                    ],
                                  ),
                                ),
                              ],
                            ),
                    ),
                    Sizer.vertical64(),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !widget.me,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(sizes.regularPadding),
                  child: ShadowContainer(
                      borderRadius: BorderRadius.circular(52),
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back,
                              color: colors.kColorBackgroudSecondary))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LinkField extends StatelessWidget {
  final Widget leading;
  final String hint;

  const LinkField({Key? key, required this.leading, required this.hint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.kColorBackgroudSecondary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: leading,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: sizes.smallPadding),
                hintText: hint,
                hintStyle: textStyles.kTextRegular,
                border: InputBorder.none,
              ),
              style: textStyles.kTextRegular,
            ),
          ),
        ],
      ),
    );
  }
}
