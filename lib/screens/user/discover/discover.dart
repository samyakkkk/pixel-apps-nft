import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/long_outlined_button.dart';
import 'package:pixel_apps_ntf/screens/user/profile/profile.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'widget/discover_creator_card.dart';

class UserDiscoverScreen extends StatelessWidget {
  const UserDiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(sizes.mediumPadding),
        child: Column(
          children: [
            Text(
              "Discover creator",
              style: textStyles.kTextBtnText,
            ),
            Sizer(),
            Text(
              "Follow at least five creators to\nbuild your feed...",
              style: textStyles.kTextRegular,
              textAlign: TextAlign.center,
            ),
            Sizer.vertical24(),
            // TODO add Feature Creator and All Creator Button
            ListView.separated(
              primary: false,
              shrinkWrap: true,
              itemBuilder: (_, i) => InkWell(
                child: DiscoverCreatorCard(),
                onTap: () => Navigator.pushNamed(context, UserProfileScreen.id,
                    arguments: false),
              ),
              separatorBuilder: (_, __) => Sizer(),
              itemCount: 4,
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
    );
  }
}
