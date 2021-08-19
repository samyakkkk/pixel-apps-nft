import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/notification.dart';
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
      // TODO remove later
      floatingActionButton: widget.me
          ? Padding(
              padding: const EdgeInsets.all(100.0),
              child: FloatingActionButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) => Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: NotificationDialog(),
                            ));
                  },
                  child: Icon(Icons.ac_unit)),
            )
          : null,
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(52),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(assets.more,
                                              color: colors.kColorFontPrimary,
                                              height: sizes.semiLargePadding)),
                                    ),
                                    Sizer.horizontal(),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(52),
                                      ),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(assets.upload,
                                              height: sizes.semiLargePadding)),
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
                                        Text("52fs5ge5g45sov45a"),
                                        IconButton(
                                            onPressed: () {},
                                            padding: EdgeInsets.all(0),
                                            icon: SvgPicture.asset(assets.copy,
                                                height: sizes.mediumPadding))
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
                                                          assets.edit)
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
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "Name",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "User Name",
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
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: sizes.smallPadding),
                                      hintText: "Email",
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
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextFormField(
                                    maxLines: 10,
                                    decoration: InputDecoration(
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
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.image),
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
                                    colorList: [Colors.black, Colors.black]),
                                Sizer.half(),
                                LongOutlinedButton(
                                    onPress: () {},
                                    text: "Verify via Instagram",
                                    colorList: [Colors.black, Colors.black]),
                                Sizer.vertical24(),
                                Text("Add links to your social media profiles.",
                                    style: textStyles.kTextTitle),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(assets.link,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Website",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(assets.discord,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Discord",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(
                                            assets.instagram,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Instagram",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(assets.youtube,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Youtube channel",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(assets.facebook,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Facebook",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Sizer.half(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SvgPicture.asset(assets.tiktok,
                                            color: colors.kColorBtnBlue),
                                      ),
                                      Expanded(
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal:
                                                        sizes.smallPadding),
                                            hintText: "Tiktok",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
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
                                                        color: Colors.black),
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
                                                          .kColorFontPlaceholder)),
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
                          icon: Icon(Icons.arrow_back))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
