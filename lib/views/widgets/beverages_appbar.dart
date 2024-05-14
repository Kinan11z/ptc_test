import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/views/widgets/beverage_modal_bottom_sheet.dart';
import 'package:ptc_test/views/widgets/button_add.dart';

class BeveragesAppBar extends StatelessWidget {
  const BeveragesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Beverages',
        style: AppStyles.stylePoppins20(context),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: ButtonAdd(
            onTap: () {
              beverageBottomSheet(context: context, width: width);
            },
          ),
        )
      ],
    );
  }
}
