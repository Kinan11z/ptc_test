import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';

class ButtonMinimize extends StatelessWidget {
  const ButtonMinimize({
    super.key,
    this.onTap,
  });
  final Function()? onTap;
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
        alignment: Alignment.center,
        child: const Icon(
          Icons.remove,
          size: 20,
          color: AppColors.minusGreyColor,
        ),
      ),
    );
  }
}
