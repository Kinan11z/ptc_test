import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({
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
        width: 30,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadious ?? 5),
            color: AppColors.primaryColor),
        child: const Icon(
          Icons.add,
          size: 20,
          color: AppColors.white,
        ),
      ),
    );
  }
}
