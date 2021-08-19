import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/screens/user/home/home.dart';
import 'package:pixel_apps_ntf/screens/user/home/widget/search_bar.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({Key? key}) : super(key: key);

  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  double _currentSliderValue = 0.1;
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SearchBar(focus: true),
                    Sizer.vertical24(),
                    Text("Type", style: textStyles.kTextTitle),
                    Sizer(),
                    Wrap(
                      spacing: 10,
                      alignment: WrapAlignment.start,
                      children: [
                        "All items",
                        "Game",
                        "Video",
                        "Animation",
                        "Photography"
                      ]
                          .map(
                            (e) => FilterChip(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizes.smallPadding,
                                  vertical: sizes.tinyPadding),
                              selectedColor: colors.kColorBtnBlue,
                              selected: e == "All items" ? true : false,
                              showCheckmark: false,
                              backgroundColor: Colors.grey[200],
                              label: Text(
                                e,
                                style: textStyles.kTextSubtitle.copyWith(
                                    color:
                                        e == "All items" ? Colors.white : null),
                              ),
                              onSelected: (_) {},
                            ),
                          )
                          .toList(),
                    ),
                    Sizer.vertical24(),
                    Text("Price range", style: textStyles.kTextTitle),
                    // Sizer(),
                    // FluidSlider(
                    //   value: _currentSliderValue,
                    //   end: Text("100 ETH"),
                    //   start: Text("0.1 ETH"),
                    //   onChanged: (double newValue) {
                    //     setState(() {
                    //       _currentSliderValue = newValue;
                    //     });
                    //   },
                    //   showDecimalValue: true,
                    //   sliderColor: colors.kColorBtnPurple.withOpacity(0.5),
                    //   thumbColor: colors.kColorBtnBlue,
                    //   labelsTextStyle: textStyles.kTextRegular,
                    //   thumbDiameter: 50,
                    //   valueTextStyle:
                    //       textStyles.kTextSubtitle.copyWith(color: Colors.white),
                    //   min: 0.1,
                    //   max: 100.0,
                    // ),
                    Sizer.vertical24(),
                    Text("Chains", style: textStyles.kTextTitle),
                    Sizer(),
                    Wrap(
                      spacing: 10,
                      alignment: WrapAlignment.start,
                      children: ["Ethereum", "Matic", "Klaytn"]
                          .map(
                            (e) => FilterChip(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizes.smallPadding,
                                  vertical: sizes.tinyPadding),
                              selectedColor: colors.kColorBtnBlue,
                              selected: e == "Ethereum" ? true : false,
                              showCheckmark: false,
                              backgroundColor: Colors.grey[200],
                              label: Text(
                                e,
                                style: textStyles.kTextSubtitle.copyWith(
                                    color:
                                        e == "Ethereum" ? Colors.white : null),
                              ),
                              onSelected: (_) {},
                            ),
                          )
                          .toList(),
                    ),
                    Sizer.vertical24(),
                    Text("Onsale in", style: textStyles.kTextTitle),
                    Sizer(),
                    Wrap(
                      spacing: 10,
                      alignment: WrapAlignment.start,
                      children: ["ETH", "WETH", "0xBTC", "1337", "1MT"]
                          .map(
                            (e) => FilterChip(
                              padding: EdgeInsets.symmetric(
                                  horizontal: sizes.smallPadding,
                                  vertical: sizes.tinyPadding),
                              selectedColor: colors.kColorBtnBlue,
                              showCheckmark: false,
                              backgroundColor: Colors.grey[200],
                              label: Text(
                                e,
                                style: textStyles.kTextSubtitle,
                              ),
                              onSelected: (_) {},
                            ),
                          )
                          .toList(),
                    ),
                    Sizer.vertical24(),
                    Text("Creator", style: textStyles.kTextTitle),
                    Sizer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.symmetric(
                          horizontal: sizes.regularPadding,
                          vertical: sizes.smallPadding),
                      child: DropdownButton<String>(
                        value: _chosenValue,
                        isDense: true,
                        isExpanded: true,
                        underline: SizedBox.shrink(),
                        iconEnabledColor: Colors.black,
                        items: <String>[
                          "Verified Only",
                          "Unverified Only",
                          "All"
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: textStyles.kTextSubtitle,
                            ),
                          );
                        }).toList(),
                        hint: Text(
                          "Choose",
                          style: textStyles.kTextSubtitle,
                        ),
                        onChanged: (value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                    Sizer.vertical24(),
                    Divider(
                      height: 1,
                      color: colors.kColorFontPlaceholder,
                      thickness: 1,
                    ),
                    Sizer.vertical24(),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: SvgPicture.asset(assets.close,
                          color: colors.kColorFontPlaceholder),
                      label: Text("Reset all filter",
                          style: textStyles.kTextSubtitle),
                    ),
                    Sizer.vertical24(),
                    ListView.separated(
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (_, i) => Column(
                        children: [
                          PostCard(
                              onPress: () {},
                              userProfileUrl:
                                  "https://source.unsplash.com/random",
                              imageUrl: "https://source.unsplash.com/random",
                              title: "Silent Color",
                              userName: "Pawel Sing",
                              userType: "Creator"),
                          Sizer(),
                          SoldContainer(),
                        ],
                      ),
                      separatorBuilder: (_, __) => Sizer(),
                      itemCount: 5,
                    ),
                    Sizer(),
                    LongOutlinedButton(
                      onPress: () {},
                      text: "Load more",
                      colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
                    ),
                    Sizer.vertical64(),
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
                        icon: Icon(Icons.arrow_back))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
