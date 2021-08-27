import 'package:flutter/material.dart';

class AppColors {
  late Color kColorBackgroud;
  late Color kColorBackgroudSecondary;
  late Color kColorFontPrimary;
  late Color kColorFontSecondary;
  late Color kColorFontSubSecondary;
  late Color kColorFontPlaceholder;
  late Color kColorShadow;
  late Color kColorBtnBlue;
  late Color kColorBtnPurple;

  void initializeColor({required bool dark}) {
    kColorBackgroud = dark ? Color(0xff222222) : Color(0xffF8F8F8);
    kColorBackgroudSecondary = dark ? Color(0xff333333) : Color(0xffF0F0F0);
    kColorFontPrimary = dark ? Color(0xffFCFCFC) : Color(0xff222222);
    kColorFontSecondary = dark ? Color(0xffFCFCFC) : Color(0xff333333);
    kColorFontSubSecondary = dark ? Color(0xffFCFCFC) : Color(0xff555555);
    kColorFontPlaceholder = dark ? Color(0xff555555) : Color(0xff888888);
    kColorShadow = dark ? Colors.transparent : Colors.grey[400]!;
    kColorBtnBlue = Color(0xff0038F5);
    kColorBtnPurple = Color(0xff9F03FF);
  }
}
