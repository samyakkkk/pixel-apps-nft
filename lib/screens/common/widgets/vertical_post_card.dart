import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class VerticalPostCard extends StatelessWidget {
  final String title;
  final String highestBid;
  final String price;
  final String imageUrl;

  const VerticalPostCard({
    Key? key,
    required this.highestBid,
    required this.imageUrl,
    required this.title,
    required this.price,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
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
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                title,
                style: textStyles.kTextTitle,
              ),
              subtitle: RichText(
                  text: TextSpan(
                text: "Highest bid ",
                style: textStyles.kTextSubtitle,
                children: [
                  TextSpan(
                    text: highestBid,
                    style: textStyles.kTextTitle,
                  )
                ],
              )),
              trailing: OutlinedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(34.0))),
                ),
                onPressed: () {},
                child: Text(
                  price,
                  style: textStyles.kTextTitle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
