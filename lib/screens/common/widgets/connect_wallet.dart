import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class ConnectWalletDialog extends StatelessWidget {
  const ConnectWalletDialog({Key? key}) : super(key: key);

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
              Text("Connect Wallet", style: textStyles.kTextTitlePrimary),
              IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () => Navigator.pop(context),
                  icon:
                      SvgPicture.asset(assets.close, height: sizes.pagePadding))
            ],
          ),
          Sizer(),
          Image.asset(assets.connectWalletPng, height: 150, width: 150),
          Sizer(),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "By connecting your wallet, you agree to our ",
                style: textStyles.kTextRegular,
                children: [
                  TextSpan(
                    text: "Terms of Service",
                    style: textStyles.kTextTitle,
                  ),
                  TextSpan(
                    text: " and our ",
                    style: textStyles.kTextRegular,
                  ),
                  TextSpan(
                    text: "Privacy Policy",
                    style: textStyles.kTextTitle,
                  )
                ]),
          ),
          Sizer.vertical24(),
          LongSolidButton(
              onPress: () {},
              text: "Connect wallet",
              colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple]),
          Sizer(),
          InkWell(
              onTap: () {},
              child: Text("Learn more about wallets",
                  style: textStyles.kTextRegular))
        ],
      ),
    );
  }
}
