import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';

class ButtonAddCart extends StatelessWidget {
  const ButtonAddCart({
    super.key,
    this.onTap,
    this.borderRadious,
  });
  final Function()? onTap;
  final double? borderRadious;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            border: Border.all(color: AppColors.borderGreyColor),
            color: AppColors.white),
        child: const Icon(
          Icons.add,
          size: 20,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
