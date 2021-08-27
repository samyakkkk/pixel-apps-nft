import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/custom_icon_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'widget/auction_status_card.dart';

class AuctionScreen extends StatefulWidget {
  static const String id = "/auctionScreen";

  /// s,r,c
  final String status;
  const AuctionScreen({Key? key, required this.status}) : super(key: key);

  @override
  _AuctionState createState() => _AuctionState();
}

class _AuctionState extends State<AuctionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(sizes.mediumPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Sizer.vertical64(),
                    Container(
                      height: 450,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Sizer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Silent Color",
                          style: textStyles.kTextTitlePrimary,
                        ),
                        Row(
                          children: [
                            ShadowContainer(
                              borderRadius: BorderRadius.circular(52),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(assets.heart,
                                      color: colors.kColorFontSecondary,
                                      height: sizes.semiLargePadding)),
                            ),
                            Sizer.horizontal(),
                            ShadowContainer(
                              borderRadius: BorderRadius.circular(52),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: SvgPicture.asset(assets.upload,
                                      height: sizes.semiLargePadding,
                                      color: colors.kColorFontSecondary)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Sizer(),
                    ShadowContainer(
                      borderRadius: BorderRadius.circular(52),
                      child: Padding(
                        padding: EdgeInsets.all(sizes.smallPadding),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random"),
                            ),
                            Sizer.halfHorizontal(),
                            Text(
                              "@openart",
                              style: textStyles.kTextTitle,
                            ),
                            Sizer.halfHorizontal(),
                          ],
                        ),
                      ),
                    ),
                    Sizer(),
                    Text(
                      "Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.",
                      style: textStyles.kTextSubtitle,
                    ),
                    Sizer.half(),
                    Wrap(
                      alignment: WrapAlignment.start,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      spacing: 10,
                      children: ["color", "circle", "black", "art"]
                          .map(
                            (e) => Chip(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: colors.kColorFontPlaceholder,
                                    width: 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              backgroundColor: colors.kColorBackgroud,
                              label: Text(
                                "#$e",
                                style: textStyles.kTextRegular.copyWith(
                                  color: colors.kColorFontSubSecondary,
                                  fontSize: sizes.smallFontSize,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Sizer(),
                    ShadowContainer(
                      child: ListTile(
                        leading: Image.asset(assets.etherscanPng,
                            height: sizes.pagePadding),
                        title: Text("View on Etherscan",
                            style: textStyles.kTextTitle),
                        trailing: SvgPicture.asset(assets.external,
                            height: sizes.pagePadding,
                            color: colors.kColorFontSecondary),
                        onTap: () {},
                      ),
                    ),
                    Sizer(),
                    ShadowContainer(
                        child: ListTile(
                      leading: SvgPicture.asset(assets.starBorder,
                          height: sizes.pagePadding,
                          color: colors.kColorFontSecondary),
                      title: Text("View on IPFS", style: textStyles.kTextTitle),
                      trailing: SvgPicture.asset(assets.external,
                          height: sizes.pagePadding,
                          color: colors.kColorFontSecondary),
                      onTap: () {},
                    )),
                    Sizer(),
                    ShadowContainer(
                        child: ListTile(
                      leading: SvgPicture.asset(assets.pieChart,
                          height: sizes.pagePadding,
                          color: colors.kColorFontSecondary),
                      title: Text("View IPFS in Metadata",
                          style: textStyles.kTextTitle),
                      trailing: SvgPicture.asset(assets.external,
                          height: sizes.pagePadding,
                          color: colors.kColorFontSecondary),
                      onTap: () {},
                    )),
                    Sizer.vertical32(),
                    widget.status == "s"
                        ? ShadowContainer(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: sizes.mediumPadding,
                                  horizontal: sizes.mediumPadding),
                              child: SoldCard(),
                            ),
                          )
                        : widget.status == "r"
                            ? ShadowContainer(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: sizes.mediumPadding,
                                      horizontal: sizes.mediumPadding),
                                  child: ReserveCard(),
                                ),
                              )
                            : ShadowContainer(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: sizes.mediumPadding,
                                      horizontal: sizes.mediumPadding),
                                  child: CurrentCard(),
                                ),
                              ),
                    Sizer.vertical32(),
                    Text(
                      "Activity",
                      style: textStyles.kTextRegular,
                    ),
                    Sizer.vertical32(),
                    ListView.separated(
                      primary: false,
                      separatorBuilder: (_, __) => Sizer(),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (_, i) => ShadowContainer(
                        child: ActivityTile(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(sizes.regularPadding),
                child: ShadowContainer(
                    borderRadius: BorderRadius.circular(52),
                    child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back,
                            color: colors.kColorFontSecondary))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  const ActivityTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://source.unsplash.com/random"),
      ),
      title: Text("Auction won by David", style: textStyles.kTextTitle),
      subtitle: RichText(
        text: TextSpan(
          text: "June 040 2021 at 12:00am\n\n",
          style: textStyles.kTextSubtitle,
          children: [
            true
                ? TextSpan(
                    text: "1.50 ETH ",
                    style: textStyles.kTextRegular
                        .copyWith(fontWeight: FontWeight.w700))
                : TextSpan(
                    text: "SOLD for 1.50 ETH ",
                    style: textStyles.kTextRegular
                        .copyWith(fontWeight: FontWeight.w700)),
            true
                ? TextSpan(text: "\$2,658.73", style: textStyles.kTextSubtitle)
                : TextSpan(text: ""),
          ],
        ),
      ),
      trailing: SvgPicture.asset(assets.external,
          height: sizes.pagePadding, color: colors.kColorFontSecondary),
      onTap: () {},
    );
  }
}
