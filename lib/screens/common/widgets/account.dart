import 'package:flutter/material.dart';
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
                          icon: Icon(Icons.copy, size: 12),
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
            leading: Icon(Icons.wallet_giftcard),
            title: Text("Balance", style: textStyles.kTextSubtitle),
            subtitle: Text("5.00 ETH", style: textStyles.kTextMediumText),
          )),
          ListTile(
              title: Text("My account", style: textStyles.kTextSubtitle),
              leading: Icon(Icons.person)),
          ListTile(
              title: Text("My items", style: textStyles.kTextSubtitle),
              leading: Icon(Icons.image)),
          ListTile(
              title: Text("My invoice", style: textStyles.kTextSubtitle),
              leading: Icon(Icons.receipt)),
          ListTile(
              title: Text("Sign Out", style: textStyles.kTextSubtitle),
              leading: Icon(Icons.logout)),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dark mode", style: textStyles.kTextBtnText),
              Switch(value: true, onChanged: (_) {})
            ],
          )
        ],
      ),
    );
  }
}
