import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';
import 'package:pixel_apps_ntf/utils/sizer.dart';

class SearchPopupScreen extends StatelessWidget {
  const SearchPopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.kColorBackgroud,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(sizes.mediumPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: colors.kColorBackgroudSecondary,
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: sizes.tinyPadding),
                          title: Expanded(
                            child: TextFormField(
                              autofocus: true,
                              style: textStyles.kTextRegular,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: Icon(Icons.close)),
                                  hintStyle: textStyles.kTextRegular,
                                  hintText:
                                      "Search items, collections, and accounts"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Sizer.halfHorizontal(),
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Text("Cancel", style: textStyles.kTextTitle)),
                  ],
                ),
                Sizer.vertical24(),
                Text("People", style: textStyles.kTextMediumText),
                ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (_, i) => ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://source.unsplash.com/random")),
                          title: Text("Microart", style: textStyles.kTextTitle),
                          subtitle:
                              Text("@art", style: textStyles.kTextSubtitle),
                        ),
                    separatorBuilder: (_, __) => Sizer.qtr(),
                    itemCount: 3),
                Text("Items", style: textStyles.kTextMediumText),
                ListView.separated(
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (_, i) => ListTile(
                          leading: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(16)),
                          ),
                          title: Text("Epic: Fight (1/4) (2009)",
                              style: textStyles.kTextTitle),
                          subtitle: Text("@lovetherobot",
                              style: textStyles.kTextSubtitle),
                        ),
                    separatorBuilder: (_, __) => Sizer.qtr(),
                    itemCount: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
