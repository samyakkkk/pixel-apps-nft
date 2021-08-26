import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class FixedMintView extends StatelessWidget {
  const FixedMintView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sizer(),
        Text("Fixed price", style: textStyles.kTextTitlePrimary),
        Sizer.qtr(),
        Text("You'll receive bids on this item",
            style: textStyles.kTextRegular),
        Sizer(),
        Row(
          children: [
            Text("ETH", style: textStyles.kTextLargeText),
            Sizer.horizontal24(),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "0.00",
                  suffixIcon: Icon(Icons.cancel_rounded),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
          ],
        ),
        Sizer(),
        Divider(),
        Sizer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Unlock once purchased", style: textStyles.kTextTitle),
            CupertinoSwitch(
              value: true,
              activeColor: colors.kColorBtnBlue,
              onChanged: (_) {},
            )
          ],
        ),
        Text(
          "Content will be unlocked after \nsuccessful transaction",
          style: textStyles.kTextSubtitle,
        ),
        Sizer.vertical24(),
        LongSolidButton(
            onPress: () {},
            text: "Mint NFT",
            colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
      ],
    );
  }
}
