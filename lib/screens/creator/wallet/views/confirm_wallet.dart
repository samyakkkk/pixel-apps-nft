import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class ConfirmWalletView extends StatelessWidget {
  const ConfirmWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Sizer(),
        Text("Terms of service", style: textStyles.kTextTitle),
        Sizer(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: "Please take a few minutes to read and understand ",
              style: textStyles.kTextRegular,
              children: [
                TextSpan(
                  text: "Stacks Terms of Service. ",
                  style: textStyles.kTextSubtitle,
                ),
                TextSpan(
                  text:
                      "To continue, you’ll need to accept the terms of services by checking the boxes.",
                  style: textStyles.kTextRegular,
                ),
              ]),
        ),
        Sizer.vertical20(),
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          dense: true,
          value: false,
          onChanged: (_) {},
          title: Text("I am at least 13 year old",
              style: textStyles.kTextSubtitle),
        ),
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          dense: true,
          value: false,
          onChanged: (_) {},
          title:
              Text("I agree terms of service", style: textStyles.kTextSubtitle),
        ),
        Sizer.vertical24(),
        LongSolidButton(
            onPress: () {},
            text: "Let's go",
            colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
        Sizer(),
        LongOutlinedButton(
            onPress: () {},
            text: "Cancel",
            colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
      ],
    );
  }
}
