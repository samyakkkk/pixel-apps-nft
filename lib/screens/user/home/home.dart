import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/grid_collection_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_solid_button.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/post_card.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/vertical_post_card.dart';
import 'package:pixel_apps_ntf/screens/user/home/widget/search_bar.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class UserHomeScreen extends StatefulWidget {
  static const String id = "/userHomeScreen";
  const UserHomeScreen({Key? key}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  final CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(sizes.mediumPadding),
        child: Column(
          children: [
            Text(
              "Discover, collect, and sell",
              style: textStyles.kTextMediumText,
            ),
            Sizer.half(),
            Text(
              "Your Digital Art",
              style: textStyles.kTextLargeText,
            ),
            Sizer.vertical24(),
            SearchBar(),
            Sizer.vertical20(),
            PostCard(
              imageUrl: "https://source.unsplash.com/random",
              userProfileUrl: "https://source.unsplash.com/random",
              title: "Silent Wave",
              userName: "Pawel Czerwinsk",
              userType: "Creator",
            ),
            Sizer(),
            RichText(
              text: TextSpan(
                text: "Reserve Price  ",
                style: textStyles.kTextRegular,
                children: [
                  TextSpan(
                      text: "1.50 ETH  ", style: textStyles.kTextTitlePrimary),
                  TextSpan(
                    text: "\$2,683.73",
                    style: textStyles.kTextMediumText,
                  ),
                ],
              ),
            ),
            Sizer(),
            LongSolidButton(
              colorList: [
                colors.kColorBtnBlue,
                colors.kColorBtnPurple,
              ],
              onPress: () {},
              text: "Place a bid",
            ),
            Sizer.half(),
            LongOutlinedButton(
              colorList: [
                colors.kColorBtnBlue,
                colors.kColorBtnPurple,
              ],
              onPress: () {},
              text: "View Artwork",
            ),
            Sizer.vertical48(),
            ListTile(
              title: Text("Live auctions", style: textStyles.kTextTitlePrimary),
              trailing:
                  OutlinedButton(onPressed: () {}, child: Text("View all")),
            ),
            Sizer.vertical24(),
            ListView.separated(
              separatorBuilder: (_, __) => Sizer.vertical48(),
              shrinkWrap: true,
              primary: false,
              itemCount: 5,
              itemBuilder: (_, i) => Column(
                children: [
                  PostCard(
                    imageUrl: "https://source.unsplash.com/random",
                    userProfileUrl: "https://source.unsplash.com/random",
                    title: "Silent Wave $i",
                    userName: "Pawel Czerwinsk $i",
                    userType: "Creator",
                  ),
                  Sizer.half(),
                  i % 3 == 0 ? SoldContainer() : BidingContainer(),
                ],
              ),
            ),
            Sizer.vertical48(),
            ListTile(
              leading: Text("🔥"),
              minLeadingWidth: 20,
              title: Text("Hot bid", style: textStyles.kTextTitlePrimary),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () => carouselController.previousPage(),
                      icon: Icon(Icons.arrow_back)),
                  Sizer.halfHorizontal(),
                  IconButton(
                      onPressed: () => carouselController.nextPage(),
                      icon: Icon(Icons.arrow_forward)),
                ],
              ),
            ),
            Sizer.vertical24(),
            CarouselSlider.builder(
              itemCount: 5,
              carouselController: carouselController,
              itemBuilder: (_, i, __) => VerticalPostCard(
                highestBid: "2.5 ETH",
                imageUrl: "https://source.unsplash.com/random",
                title: "Inside Kings Cross",
                price: "7.5 ETH",
              ),
              options: CarouselOptions(
                height: 450,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: false,
                viewportFraction: 0.8,
              ),
            ),
            Sizer.vertical48(),
            ListTile(
              leading: Text("✨"),
              minLeadingWidth: 20,
              title:
                  Text("Hot Collection", style: textStyles.kTextTitlePrimary),
            ),
            Sizer.vertical24(),
            GridCollectionCard(
              imageUrls: [
                "https://source.unsplash.com/random",
                "https://source.unsplash.com/random",
                "https://source.unsplash.com/random",
                "https://source.unsplash.com/random",
              ],
              userImage: "https://source.unsplash.com/random",
              username: "Tekeshwar Singh",
            ),
            Sizer(),
            Divider(
              thickness: 1,
              height: 1,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}

class BidingContainer extends StatelessWidget {
  const BidingContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(sizes.smallPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Current bid", style: textStyles.kTextRegular),
              Sizer.qtrHorizontal(),
              Text("2.00 ETH", style: textStyles.kTextTitlePrimary),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ending in", style: textStyles.kTextRegular),
              Sizer.qtrHorizontal(),
              Text("27m 30s", style: textStyles.kTextTitlePrimary),
            ],
          ),
        ],
      ),
    );
  }
}

class SoldContainer extends StatelessWidget {
  const SoldContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      width: double.infinity,
      padding: EdgeInsets.all(sizes.mediumPadding),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Sold For ",
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
