import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  // يختلف حسب نوع الجهاز
  double scaleFactor = getScaleFactor(context);
  // القيمة الجديدة للخط
  double responsiveFontSize = fontSize * scaleFactor;
  // حدود الخط
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  // للتأكد من ان الخط لا يتجاوز الحدود
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 550;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
