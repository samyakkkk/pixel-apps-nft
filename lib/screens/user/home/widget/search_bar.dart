import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class SearchBar extends StatelessWidget {
  final bool focus;
  const SearchBar({
    Key? key,
    required this.focus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colors.kColorBackgroudSecondary,
      ),
      child: ListTile(
        contentPadding:
            EdgeInsets.symmetric(vertical: 0, horizontal: sizes.smallPadding),
        title: TextFormField(
          autofocus: focus,
          decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              suffixIcon: Icon(Icons.mic),
              hintText: "Search items, collections, and accounts"),
        ),
      ),
    );
  }
}
