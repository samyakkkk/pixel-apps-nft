import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class LongSolidButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final List<Color> colorList;

  const LongSolidButton(
      {Key? key,
      required this.onPress,
      required this.text,
      required this.colorList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: sizes.mediumPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: colorList,
            )),
        child: Text(text,
            textAlign: TextAlign.center,
            style: textStyles.kTextBtnText.copyWith(
              color: Colors.white,
            )),
      ),
    );
  }
}
