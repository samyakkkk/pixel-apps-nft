import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/custom_icon_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class UserProfileScreen extends StatefulWidget {
  static const String id = "/userProfileScreen";
  final bool me;
  const UserProfileScreen({Key? key, required this.me}) : super(key: key);

  static const int itemCount = 0;

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  bool edit = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.me
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.black),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                            CustomIconButton(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_horiz_outlined))),
                            Sizer.halfHorizontal(),
                            CustomIconButton(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.upload_file_outlined))),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("52fs5ge5g45sov45a"),
                                IconButton(
                                    onPressed: () {},
                                    padding: EdgeInsets.all(0),
                                    icon: Icon(Icons.copy))
                              ],
                            ),
                            Visibility(
                              visible: !edit,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("150",
                                          style: textStyles.kTextLargeText),
                                      Sizer.halfHorizontal(),
                                      Text("Following",
                                          style: textStyles.kTextSubtitle),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("1024",
                                          style: textStyles.kTextLargeText),
                                      Sizer.halfHorizontal(),
                                      Text("Followers",
                                          style: textStyles.kTextSubtitle),
                                    ],
                                  ),
                                  MaterialButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    color: Colors.white,
                                    onPressed: widget.me
                                        ? () {
                                            setState(() {
                                              edit = !edit;
                                            });
                                          }
                                        : () {},
                                    elevation: 1,
                                    child: widget.me
                                        ? Icon(Icons.edit)
                                        : Text("Follow",
                                            style: textStyles.kTextBtnText),
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
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/random"),
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
                        Text("Enter your email", style: textStyles.kTextTitle),
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
                          padding: EdgeInsets.only(left: sizes.tinyPadding),
                          child: Text(
                              "Add your email address to receive notifications about your activity on Foundation. This will not be shown on your profile.",
                              style: textStyles.kTextRegular
                                  .copyWith(fontSize: 13)),
                        ),
                        Sizer.vertical24(),
                        Text("Enter your bio", style: textStyles.kTextTitle),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                child: Icon(Icons.link),
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: sizes.smallPadding),
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
                                    left: 74, child: CircleAvatar(radius: 15)),
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
                            visible: !widget.me, child: Sizer.vertical24()),
                        Text(
                          "Member since 2021",
                          style: textStyles.kTextSubtitle,
                          textAlign:
                              widget.me ? TextAlign.center : TextAlign.start,
                        ),
                        Visibility(
                            visible: !widget.me, child: Sizer.vertical24()),
                        Visibility(
                          visible: !widget.me,
                          child: Wrap(
                            spacing: 20,
                            children: [
                              Chip(
                                elevation: 5,
                                shadowColor: colors.kColorBackgroudSecondary,
                                backgroundColor: Colors.white,
                                avatar: Icon(Icons.two_k_outlined),
                                label: Text(
                                  "@openart",
                                  style: textStyles.kTextTitle,
                                ),
                              ),
                              Chip(
                                elevation: 5,
                                shadowColor: colors.kColorBackgroudSecondary,
                                backgroundColor: Colors.white,
                                avatar: Icon(Icons.insert_invitation),
                                label: Text(
                                  "@openart.design",
                                  style: textStyles.kTextTitle,
                                ),
                              ),
                              Chip(
                                elevation: 5,
                                shadowColor: colors.kColorBackgroudSecondary,
                                backgroundColor: Colors.white,
                                avatar: Icon(Icons.attachment_outlined),
                                label: Text(
                                  "Openart.design",
                                  style: textStyles.kTextTitle,
                                ),
                              ),
                            ],
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
                                      style: textStyles.kTextTitlePrimary),
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
                            text: "➕   Load more",
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
    );
  }
}
