import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

import 'long_outlined_button.dart';

class GridCollectionCard extends StatelessWidget {
  final List<String> imageUrls;
  final String userImage;
  final String username;

  const GridCollectionCard({
    Key? key,
    required this.imageUrls,
    required this.userImage,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: imageUrls.length < 4 ? imageUrls.length : 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: (2.7 / 3)),
            itemBuilder: (_, i) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(imageUrls[i]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Water and sunflower", style: textStyles.kTextTitle),
            trailing: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0))),
                ),
                child: Text("30 items", style: textStyles.kTextTitle)),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
            title: Text("by $username",
                style: textStyles.kTextTitle.copyWith(fontSize: 13)),
            trailing: OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Sizer.halfHorizontal(),
                  Text("Follow", style: textStyles.kTextRegular),
                ],
              ),
            ),
          ),
          Sizer(),
          LongOutlinedButton(
            colorList: [
              colors.kColorBtnBlue,
              colors.kColorBtnPurple,
            ],
            onPress: () {},
            text: "View more collection",
          ),
        ],
      ),
    );
  }
}
