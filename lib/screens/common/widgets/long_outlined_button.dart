import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class LongOutlinedButton extends StatelessWidget {
  final Function onPress;
  final String text;
  final List<Color> colorList;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const LongOutlinedButton(
      {Key? key,
      required this.onPress,
      required this.text,
      this.textStyle,
      this.padding,
      required this.colorList})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(colors: colorList)),
        child: Container(
          padding:
              padding ?? EdgeInsets.symmetric(vertical: sizes.mediumPadding),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colors.kColorBackgroud),
          child: Text(text,
              textAlign: TextAlign.center,
              style: textStyle ?? textStyles.kTextBtnText),
        ),
      ),
    );
  }
}
