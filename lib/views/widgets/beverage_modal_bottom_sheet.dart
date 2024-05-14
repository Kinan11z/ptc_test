import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/views/widgets/bottom_sheet_text_field.dart';
import 'package:ptc_test/views/widgets/custom_button.dart';

beverageBottomSheet({required BuildContext context, required double width}) {
  showModalBottomSheet(
    backgroundColor: AppColors.modalButtonGreyColor,
    elevation: 0,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.6,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add',
                    style: AppStyles.stylePoppins24(context),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.close))
                ],
              ),
              const Divider(),
              const ButtomSheetTextField(text: 'Name'),
              const ButtomSheetTextField(text: 'Description'),
              const ButtomSheetTextField(text: 'Price'),
              const ButtomSheetTextField(text: 'Image'),
              const SizedBox(height: 30),
              Center(
                child: CustomButton(
                  width: width * 0.8,
                  height: 60,
                  text: 'Add Item',
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
