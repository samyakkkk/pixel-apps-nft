import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/screens/common/widgets/shadow_container.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class DiscoverCreatorCard extends StatelessWidget {
  const DiscoverCreatorCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowContainer(
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://source.unsplash.com/random"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.only(
                    top: 70,
                    left: sizes.mediumPadding,
                    right: sizes.mediumPadding,
                    bottom: sizes.regularPadding,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kennedy Yanko",
                          style: textStyles.kTextTitlePrimary),
                      Sizer.half(),
                      Text(
                        "Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…",
                        maxLines: 6,
                        overflow: TextOverflow.clip,
                        style: textStyles.kTextSubtitle,
                        textAlign: TextAlign.center,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("1024", style: textStyles.kTextLargeText),
                              Sizer.halfHorizontal(),
                              Text("Followers",
                                  style: textStyles.kTextSubtitle),
                            ],
                          ),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            color: colors.kColorBackgroud,
                            onPressed: () {},
                            elevation: 1,
                            child:
                                Text("Follow", style: textStyles.kTextBtnText),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 95,
              left: (MediaQuery.of(context).size.width / 2) -
                  (55 + sizes.mediumPadding),
              child: CircleAvatar(
                radius: 55,
                backgroundColor: colors.kColorBackgroud,
              ),
            ),
            Positioned(
              top: 100,
              left: (MediaQuery.of(context).size.width / 2) -
                  (50 + sizes.mediumPadding),
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    NetworkImage("https://source.unsplash.com/random"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
