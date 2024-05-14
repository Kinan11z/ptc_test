import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/functions/responsive_text.dart';

class AppStyles {
  static TextStyle stylePoppins48(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 48),
        color: AppColors.white,
        height: 1,
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins16(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        color: AppColors.whiteOpacity,
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins18(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        color: AppColors.white,
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins20(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins14(BuildContext context) {
    return TextStyle(
        color: AppColors.textGreyColor,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins24(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins28(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 28),
        fontWeight: FontWeight.w400);
  }

  static TextStyle stylePoppins12(BuildContext context) {
    return TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontWeight: FontWeight.w400);
  }
}
