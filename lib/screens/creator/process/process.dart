import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/user/auction/widget/auction_status_card.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class ProcessScreen extends StatefulWidget {
  static const String id = "/processScreen";
  const ProcessScreen({Key? key}) : super(key: key);

  @override
  _ProcessScreenState createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> {
  bool mining = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () => setState(() => mining = false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(sizes.mediumPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                mining
                    ? Column(
                        children: [
                          Image.asset(assets.connectWalletPng, height: 200),
                          Sizer(),
                          Text("Your NFT is being minted..",
                              textAlign: TextAlign.center,
                              style: textStyles.kTextTitlePrimary),
                          Sizer.half(),
                          Text(
                              "Ore you MIT is minted on the Ethereum blockchain, you will not be abile to edit ",
                              textAlign: TextAlign.center,
                              style: textStyles.kTextRegular),
                        ],
                      )
                    : Column(
                        children: [
                          Image.asset(assets.securityPng, height: 200),
                          Sizer(),
                          Text("Your NFT has been listed!",
                              textAlign: TextAlign.center,
                              style: textStyles.kTextLargeText),
                          Sizer.half(),
                          Text(
                              "Your NFT has been successfully listed on our marketplace.",
                              textAlign: TextAlign.center,
                              style: textStyles.kTextRegular),
                        ],
                      ),
                Sizer(),
                PostCard(
                  onPress: () {},
                  userProfileUrl: "https://source.unsplash.com/random",
                  imageUrl: "https://source.unsplash.com/random",
                  title: "Silent Color",
                  userName: "tsvillain",
                  userType: "Creator",
                ),
                Sizer(),
                ReserveContainer(),
                Sizer.vertical24(),
                Visibility(
                  visible: !mining,
                  child: LongOutlinedButton(
                      onPress: () {},
                      text: "Share",
                      colorList: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple
                      ]),
                ),
                Sizer.half(),
                Visibility(
                  visible: !mining,
                  child: LongOutlinedButton(
                      onPress: () {},
                      text: "View in marketplace",
                      colorList: [
                        colors.kColorBtnBlue,
                        colors.kColorBtnPurple
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReserveContainer extends StatelessWidget {
  const ReserveContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.kColorBackgroudSecondary,
        borderRadius: BorderRadius.circular(50),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(sizes.mediumPadding),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Reserve Price ",
          style: textStyles.kTextRegular.copyWith(fontSize: 20),
          children: [
            TextSpan(
                text: "2.00 ETH",
                style: textStyles.kTextRegular
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
