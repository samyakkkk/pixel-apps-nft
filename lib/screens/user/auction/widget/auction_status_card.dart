import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/user/auction/widget/place_bid.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class SoldCard extends StatelessWidget {
  const SoldCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "Sold for ",
            style: textStyles.kTextRegular.copyWith(fontSize: 20),
            children: [
              TextSpan(text: "1.50 ETH ", style: textStyles.kTextTitlePrimary),
              TextSpan(
                text: "\$2,683.73",
                style: textStyles.kTextMediumText
                    .copyWith(color: colors.kColorFontPlaceholder),
              ),
            ],
          ),
        ),
        Sizer.vertical24(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Owner by ",
                style: textStyles.kTextRegular.copyWith(fontSize: 20)),
            Chip(
              elevation: 5,
              shadowColor: colors.kColorBackgroudSecondary,
              backgroundColor: Colors.white,
              avatar: CircleAvatar(
                backgroundColor: Colors.pink,
              ),
              label: Text(
                "@david",
                style: textStyles.kTextTitle,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class ReserveCard extends StatelessWidget {
  const ReserveCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "Reserve Price\n",
            style: textStyles.kTextRegular.copyWith(fontSize: 20),
            children: [
              TextSpan(text: "1.50 ETH ", style: textStyles.kTextTitlePrimary),
              TextSpan(
                text: "\$2,683.73",
                style: textStyles.kTextMediumText
                    .copyWith(color: colors.kColorFontPlaceholder),
              ),
            ],
          ),
        ),
        Sizer.vertical24(),
        Text(
          "Once a bid has been placed and the reserve price has been met, a 24 hour auction for this artwork will begin.",
          style: textStyles.kTextRegular,
        ),
        Sizer.vertical32(),
        LongSolidButton(
          onPress: () => showDialog(
            context: context,
            builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: PlaceBidDialog(),
            ),
          ),
          text: "Place a bid",
          colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
        ),
      ],
    );
  }
}

class CurrentCard extends StatelessWidget {
  const CurrentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: "Current Price\n",
            style: textStyles.kTextRegular.copyWith(fontSize: 20),
            children: [
              TextSpan(text: "1.50 ETH ", style: textStyles.kTextTitlePrimary),
              TextSpan(
                text: "\$2,683.73",
                style: textStyles.kTextMediumText
                    .copyWith(color: colors.kColorFontPlaceholder),
              ),
            ],
          ),
        ),
        Sizer.vertical24(),
        Text(
          "Auction ending in",
          style: textStyles.kTextRegular,
        ),
        Sizer.half(),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("12", style: textStyles.kTextTitlePrimary),
                Text("hours", style: textStyles.kTextSubtitle)
              ],
            ),
            Sizer.horizontal24(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("30", style: textStyles.kTextTitlePrimary),
                Text("minutes", style: textStyles.kTextSubtitle)
              ],
            ),
            Sizer.horizontal24(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("25", style: textStyles.kTextTitlePrimary),
                Text("seconds", style: textStyles.kTextSubtitle)
              ],
            ),
          ],
        ),
        Sizer.vertical32(),
        LongSolidButton(
          onPress: () => showDialog(
            context: context,
            builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: PlaceBidDialog(),
            ),
          ),
          text: "Place a bid",
          colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
        ),
      ],
    );
  }
}
