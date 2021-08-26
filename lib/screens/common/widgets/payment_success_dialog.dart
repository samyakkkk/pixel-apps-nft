import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'long_outlined_button.dart';
import 'long_solid_button.dart';

class PaymentSuccessDialog extends StatelessWidget {
  const PaymentSuccessDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: sizes.mediumPadding, horizontal: sizes.mediumPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Payment success", style: textStyles.kTextTitlePrimary),
              IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () => Navigator.pop(context),
                  icon:
                      SvgPicture.asset(assets.close, height: sizes.pagePadding))
            ],
          ),
          Sizer.vertical32(),
          SvgPicture.asset(assets.star, height: 160),
          Sizer(),
          Text("Your payment was success", style: textStyles.kTextTitle),
          Sizer.half(),
          Text("Payment ID 15247584", style: textStyles.kTextRegular),
          Sizer.vertical24(),
          LongSolidButton(
              onPress: () {},
              text: "Processing",
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
