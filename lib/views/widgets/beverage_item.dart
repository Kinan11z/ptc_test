import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/core/data/static/beverages_data.dart';
import 'package:ptc_test/views/widgets/button_add.dart';

class BeverageItem extends StatelessWidget {
  const BeverageItem({super.key, required this.index, this.onTap});
  final int index;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderContainer),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(beveragesData[index].image),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              beveragesData[index].title,
              style: AppStyles.stylePoppins16(context)
                  .copyWith(color: AppColors.black),
            ),
            const SizedBox(height: 5),
            Text(
              beveragesData[index].capacity,
              style: AppStyles.stylePoppins14(context),
            ),
            Text(
              'Price',
              style: AppStyles.stylePoppins14(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${beveragesData[index].price}',
                  style: AppStyles.stylePoppins18(context)
                      .copyWith(color: AppColors.black),
                ),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: ButtonAdd(
                    borderRadious: 17,
                    onTap: onTap,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
