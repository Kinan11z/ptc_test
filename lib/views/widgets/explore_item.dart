import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/core/data/static/products_data.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
    required this.index,
    this.onTap,
  });

  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: productsData[index].backgroundColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: productsData[index].borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Expanded(
                child: Image.asset(
                  productsData[index].image,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                productsData[index].title,
                style: AppStyles.stylePoppins16(context)
                    .copyWith(color: AppColors.black),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
