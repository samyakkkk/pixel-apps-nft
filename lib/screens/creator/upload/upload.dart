import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class UploadArtWorkCreator extends StatelessWidget {
  static const String id = "/uploadArtWorkCreator";
  const UploadArtWorkCreator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(sizes.mediumPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Upload Artwork", style: textStyles.kTextLargeText),
            Sizer(),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.image),
                  Text("Browse a file", style: textStyles.kTextMediumText),
                  Sizer.half(),
                  Text("PNG, GIF, WEBP, MP4 or MP3, (Max 1Gb)",
                      style: textStyles.kTextSubtitle,
                      textAlign: TextAlign.center)
                ],
              ),
            ),
            Sizer(),
            CheckboxListTile(
              value: false,
              onChanged: (_) {},
              dense: true,
              contentPadding: EdgeInsets.all(0),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Multi-file", style: textStyles.kTextSubtitle),
            ),
            Sizer.half(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16)),
                  child: SvgPicture.asset(assets.upload,
                      height: sizes.regularPadding),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16)),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(16)),
                ),
              ],
            ),
            Sizer(),
            Text("Information", style: textStyles.kTextTitle),
            Sizer.half(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: sizes.smallPadding),
                  hintText: "Item Name",
                  border: InputBorder.none,
                ),
              ),
            ),
            Sizer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: sizes.smallPadding),
                  hintText: "Tag",
                  border: InputBorder.none,
                ),
              ),
            ),
            Sizer(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: sizes.smallPadding),
                  hintText: "Description",
                  border: InputBorder.none,
                ),
              ),
            ),
            Sizer.vertical24(),
            CheckboxListTile(
              value: true,
              dense: true,
              contentPadding: EdgeInsets.all(0),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (_) {},
              title: Text("Sale this item", style: textStyles.kTextTitle),
              subtitle: Text("You'll receive bids on this item",
                  style: textStyles.kTextSubtitle),
            ),
            Sizer(),
            CheckboxListTile(
              value: true,
              dense: true,
              contentPadding: EdgeInsets.all(0),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (_) {},
              title: Text("Instant sale price", style: textStyles.kTextTitle),
              subtitle: Text(
                  "Enter the price for which the item will be instantly sold",
                  style: textStyles.kTextSubtitle),
            ),
            Sizer(),
            CheckboxListTile(
              value: false,
              dense: true,
              contentPadding: EdgeInsets.all(0),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (_) {},
              title:
                  Text("Unlock once purchased", style: textStyles.kTextTitle),
              subtitle: Text(
                  "Contest will be unlocked after successful transaction",
                  style: textStyles.kTextSubtitle),
            ),
            Sizer(),
            CheckboxListTile(
              value: true,
              dense: true,
              contentPadding: EdgeInsets.all(0),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (_) {},
              title: Text("Add to collection", style: textStyles.kTextTitle),
              subtitle: Text("Choose an exiting collection or create a new one",
                  style: textStyles.kTextSubtitle),
            ),
            Sizer(),
            Row(
              children: [
                Expanded(
                  child: ShadowContainer(
                      child: Padding(
                    padding: EdgeInsets.all(sizes.mediumPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey[300],
                          child: Icon(Icons.add),
                        ),
                        Sizer.half(),
                        Text("Create new collection",
                            style: textStyles.kTextRegular),
                      ],
                    ),
                  )),
                ),
                Sizer.halfHorizontal(),
                // Expanded(
                //   child: ShadowContainer(
                //       child: Padding(
                //     padding: EdgeInsets.all(sizes.mediumPadding),
                //     child: Row(
                //       children: [
                //         Expanded(
                //           child: Container(
                //               child: SizedBox.expand(),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.only(
                //                       topLeft: Radius.circular(8),
                //                       bottomLeft: Radius.circular(8)),
                //                   image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://source.unsplash.com/random"),
                //                       fit: BoxFit.cover))),
                //         ),
                //         Expanded(
                //           child: Container(
                //               child: SizedBox.expand(),
                //               decoration: BoxDecoration(
                //                   borderRadius: BorderRadius.only(
                //                       topRight: Radius.circular(8),
                //                       bottomRight: Radius.circular(8)),
                //                   image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://source.unsplash.com/random"),
                //                       fit: BoxFit.cover))),
                //         ),
                //       ],
                //     ),
                //   )),
                // )
              ],
            ),
            Sizer.vertical20(),
            LongOutlinedButton(
                onPress: () {
                  showDialog(
                    context: context,
                    builder: (_) => Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: sizes.mediumPadding),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Preview",
                                    style: textStyles.kTextTitlePrimary),
                                IconButton(
                                    padding: EdgeInsets.all(0),
                                    icon: SvgPicture.asset(assets.close),
                                    onPressed: () => Navigator.pop(context)),
                              ],
                            ),
                          ),
                          PostCard(
                              shadow: false,
                              onPress: () {},
                              userProfileUrl:
                                  "https://source.unsplash.com/random",
                              imageUrl: "https://source.unsplash.com/random",
                              title: "Silent Wave",
                              userName: "Pawel Czer",
                              userType: "Creator"),
                        ],
                      ),
                    ),
                  );
                },
                text: "Preview",
                colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
            Sizer.half(),
            LongSolidButton(
                onPress: () {},
                text: "Upload",
                colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
            Sizer.vertical64(),
          ],
        ),
      ),
    );
  }
}
