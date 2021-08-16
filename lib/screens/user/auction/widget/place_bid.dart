import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class PlaceBidDialog extends StatelessWidget {
  const PlaceBidDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: sizes.mediumPadding, horizontal: sizes.mediumPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text("Place a bid", style: textStyles.kTextTitlePrimary),
            subtitle: Text("You must bid atleast 0.852 ETH",
                style: textStyles.kTextSubtitle),
            trailing: IconButton(
                padding: EdgeInsets.all(0),
                onPressed: () => Navigator.pop(context),
                icon: Icon(Icons.cancel_outlined)),
          ),
          Sizer.vertical32(),
          Text("Your bid",
              style: textStyles.kTextRegular
                  .copyWith(fontWeight: FontWeight.w700)),
          Sizer.half(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Enter bid", style: textStyles.kTextRegular),
              Text("ETH",
                  style: textStyles.kTextRegular
                      .copyWith(fontWeight: FontWeight.w700))
            ],
          ),
          Sizer.half(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your balance", style: textStyles.kTextRegular),
              Text("4.568 ETH",
                  style: textStyles.kTextRegular
                      .copyWith(fontWeight: FontWeight.w700))
            ],
          ),
          Sizer.half(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Service fee", style: textStyles.kTextRegular),
              Text("0.001 ETH",
                  style: textStyles.kTextRegular
                      .copyWith(fontWeight: FontWeight.w700))
            ],
          ),
          Sizer.half(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total", style: textStyles.kTextRegular),
              Text("0.001 ETH",
                  style: textStyles.kTextRegular
                      .copyWith(fontWeight: FontWeight.w700))
            ],
          ),
          Sizer.vertical24(),
          LongSolidButton(
              onPress: () {},
              text: "Place a bid",
              colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
          Sizer(),
          LongOutlinedButton(
              onPress: () => Navigator.pop(context),
              text: "Cancel",
              colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
        ],
      ),
    );
  }
}
