import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'long_outlined_button.dart';
import 'long_solid_button.dart';

class CheckoutDialog extends StatelessWidget {
  const CheckoutDialog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: sizes.mediumPadding, horizontal: sizes.mediumPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Checkout", style: textStyles.kTextTitlePrimary),
              IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () => Navigator.pop(context),
                  icon:
                      SvgPicture.asset(assets.close, height: sizes.pagePadding))
            ],
          ),
          Sizer.vertical32(),
          Text("Your payment:",
              style: textStyles.kTextRegular
                  .copyWith(fontWeight: FontWeight.w700)),
          Sizer.half(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1.005", style: textStyles.kTextRegular),
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
              Text("You will pay", style: textStyles.kTextRegular),
              Text("0.001 ETH",
                  style: textStyles.kTextRegular
                      .copyWith(fontWeight: FontWeight.w700))
            ],
          ),
          Sizer.vertical24(),
          LongSolidButton(
              onPress: () {},
              text: "Check out",
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
