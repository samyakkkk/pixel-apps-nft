import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String userName;
  final String userType;
  final String imageUrl;
  final String userProfileUrl;
  final Function onPress;
  final bool shadow;

  PostCard(
      {Key? key,
      this.shadow = true,
      required this.onPress,
      required this.userProfileUrl,
      required this.imageUrl,
      required this.title,
      required this.userName,
      required this.userType})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(
        height: 525,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: shadow
              ? [
                  BoxShadow(
                    blurRadius: 8,
                    offset: Offset(8, 5),
                    color: Colors.grey[400]!,
                    spreadRadius: 0.2,
                  )
                ]
              : [],
          borderRadius: BorderRadius.circular(32),
        ),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Sizer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: sizes.smallPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textStyles.kTextTitlePrimary,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(userProfileUrl),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: SvgPicture.asset(
                          assets.dot,
                          color: Colors.green,
                          height: sizes.regularPadding,
                        ),
                      ),
                    ),
                    title: Text(
                      userName,
                      style: textStyles.kTextTitle,
                    ),
                    subtitle: Text(
                      userType,
                      style: textStyles.kTextSubtitle,
                    ),
                    trailing: SvgPicture.asset(assets.heart,
                        height: sizes.pagePadding),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
