import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class NotificationDialog extends StatelessWidget {
  const NotificationDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(sizes.mediumPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Notification", style: textStyles.kTextLargeText),
          Sizer.half(),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            separatorBuilder: (_, __) => Divider(height: 1, thickness: 1),
            itemCount: 4,
            itemBuilder: (_, __) => ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random"),
                      fit: BoxFit.cover),
                ),
              ),
              isThreeLine: true,
              title: Text("ETH received", style: textStyles.kTextTitle),
              subtitle: Text("1.05 ETH received\n\n1 day ago",
                  style: textStyles.kTextSubtitle),
            ),
          ),
          Sizer(),
          LongSolidButton(
            onPress: () {},
            text: "View all",
            textStyle: textStyles.kTextTitle.copyWith(color: Colors.white),
            colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
          ),
          Sizer.half(),
          LongOutlinedButton(
            onPress: () {},
            text: "Mark as all read",
            textStyle:
                textStyles.kTextTitle.copyWith(color: colors.kColorFontPrimary),
            colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
          ),
        ],
      ),
    );
  }
}
