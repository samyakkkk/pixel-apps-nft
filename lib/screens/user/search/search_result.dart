import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(sizes.mediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBar(focus: true),
              Sizer.vertical24(),
              Text("Type", style: textStyles.kTextTitle),
              Sizer(),
              Wrap(
                spacing: 10,
                alignment: WrapAlignment.start,
                children:
                    ["All items", "Game", "Video", "Animation", "Photography"]
                        .map(
                          (e) => FilterChip(
                            padding: EdgeInsets.symmetric(
                                horizontal: sizes.smallPadding,
                                vertical: sizes.tinyPadding),
                            selectedColor: colors.kColorBtnBlue,
                            selected: e == "All items" ? true : false,
                            showCheckmark: false,
                            label: Text(
                              e,
                              style: textStyles.kTextSubtitle.copyWith(
                                  color: e == "All items"
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            onSelected: (_) {},
                          ),
                        )
                        .toList(),
              ),
              Sizer.vertical24(),
              Text("Price range", style: textStyles.kTextTitle),
              Sizer(),
              Slider(
                value: _currentSliderValue,
                min: 0.0,
                max: 100,
                activeColor: colors.kColorBtnBlue,
                label: _currentSliderValue.toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
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
                        label: Text(
                          e,
                          style: textStyles.kTextSubtitle.copyWith(
                              color: e == "Ethereum"
                                  ? Colors.white
                                  : Colors.black),
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
                        label: Text(
                          e,
                          style: textStyles.kTextSubtitle
                              .copyWith(color: Colors.black),
                        ),
                        onSelected: (_) {},
                      ),
                    )
                    .toList(),
              ),
              Sizer.vertical24(),
              Divider(
                height: 1,
                color: colors.kColorFontPlaceholder,
                thickness: 1,
              ),
              Sizer.vertical24(),
              Chip(
                label:
                    Text("Reset all filter", style: textStyles.kTextSubtitle),
              ),
              Sizer.vertical24(),
              ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (_, i) => Column(
                  children: [
                    PostCard(
                        onPress: () {},
                        userProfileUrl: "https://source.unsplash.com/random",
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
                text: "➕   Load more",
                colorList: [colors.kColorBtnBlue, colors.kColorBtnPurple],
              ),
              Sizer.vertical64(),
            ],
          ),
        ),
      ),
    );
  }
}
