import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class AccountDialog extends StatelessWidget {
  const AccountDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(sizes.regularPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Sizer.half(),
          Container(
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage("https://source.unsplash.com/random"),
                ),
                Sizer.horizontal(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Gift Habeshaw", style: textStyles.kTextTitle),
                    Row(
                      children: [
                        Text("48778478asdadd", style: textStyles.kTextSubtitle),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(assets.copy,
                              height: sizes.regularPadding),
                          padding: EdgeInsets.all(0),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Sizer(),
          ShadowContainer(
              child: ListTile(
            leading: ShadowContainer(
                borderRadius: BorderRadius.circular(52),
                child: Padding(
                  padding: EdgeInsets.all(sizes.tinyPadding),
                  child: SvgPicture.asset(assets.wallet),
                )),
            title: Text("Balance", style: textStyles.kTextSubtitle),
            subtitle: Row(
              children: [
                Text("5.00 ETH", style: textStyles.kTextMediumText),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(assets.hide,
                        height: sizes.regularPadding)),
              ],
            ),
          )),
          ListTile(
              title: Text("My account", style: textStyles.kTextSubtitle),
              minLeadingWidth: 10,
              leading: SvgPicture.asset(assets.account,
                  height: sizes.mediumPadding)),
          ListTile(
              title: Text("My items", style: textStyles.kTextSubtitle),
              minLeadingWidth: 10,
              leading: SvgPicture.asset(assets.gallery,
                  height: sizes.mediumPadding)),
          ListTile(
              minLeadingWidth: 10,
              title: Text("My invoice", style: textStyles.kTextSubtitle),
              leading: SvgPicture.asset(assets.invoice,
                  height: sizes.mediumPadding)),
          ListTile(
              minLeadingWidth: 10,
              title: Text("Sign Out", style: textStyles.kTextSubtitle),
              leading: SvgPicture.asset(assets.backArrow,
                  height: sizes.mediumPadding)),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: sizes.regularPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark mode", style: textStyles.kTextBtnText),
                CupertinoSwitch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
