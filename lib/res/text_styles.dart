import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_apps_ntf/res/res.dart';

class AppTextStyles {
  final kTextLargeText = GoogleFonts.epilogue(
    fontWeight: FontWeight.w700,
    fontSize: sizes.jumboFontSize,
    letterSpacing: 1,
    color: colors.kColorFontPrimary,
  );
  final kTextMediumText = GoogleFonts.epilogue(
    fontWeight: FontWeight.w700,
    fontSize: sizes.largeFontSize,
    color: colors.kColorFontSecondary,
  );
  final kTextTitlePrimary = GoogleFonts.epilogue(
    fontWeight: FontWeight.w700,
    fontSize: sizes.extraLargeFontSize,
    color: colors.kColorFontPrimary,
  );
  final kTextTitle = GoogleFonts.epilogue(
    fontWeight: FontWeight.w700,
    fontSize: sizes.mediumFontSize,
    color: colors.kColorFontSecondary,
  );
  final kTextSubtitle = GoogleFonts.epilogue(
    fontWeight: FontWeight.w500,
    fontSize: sizes.regularFontSize,
    color: colors.kColorFontSubSecondary,
  );
  final kTextRegular = GoogleFonts.epilogue(
    fontWeight: FontWeight.w400,
    fontSize: sizes.mediumFontSize,
    color: colors.kColorFontPrimary,
  );
  final kTextBtnText = GoogleFonts.epilogue(
    fontWeight: FontWeight.w700,
    fontSize: sizes.largeFontSize,
    color: colors.kColorFontPrimary,
  );
}
