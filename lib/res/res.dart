import 'package:flutter/material.dart';
import 'package:pixel_apps_ntf/res/colors.dart';
import 'text_styles.dart';
import 'app_sizes.dart';
import 'assets.dart';

late Assets assets;
late AppColors colors;
late AppSizes sizes;
late AppTextStyles textStyles;

void initializeResources({required BuildContext context, required bool dark}) {
  sizes = AppSizes()..initializeSize(context);
  colors = AppColors()..initializeColor(dark: dark);
  assets = Assets();
  textStyles = AppTextStyles();
}
