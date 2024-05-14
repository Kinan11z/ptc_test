import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/views/screens/order_accepted.dart';
import 'package:ptc_test/views/widgets/bottom_sheet_text_field.dart';
import 'package:ptc_test/views/widgets/custom_button.dart';

checkoutBottomSheet({required BuildContext context, required double width}) {
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
                    'Checkout',
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
              const ButtomSheetTextField(
                text: 'Delivery',
                suffixText: 'Select Method',
              ),
              const ButtomSheetTextField(text: 'Pament'),
              const ButtomSheetTextField(
                text: 'Promo Code',
                suffixText: 'Pick discount',
              ),
              const ButtomSheetTextField(text: 'Total Cost'),
              Text(
                'By placing an order you agree to ourTerms And Conditions',
                style: AppStyles.stylePoppins14(context),
              ),
              const SizedBox(height: 20),
              Center(
                child: CustomButton(
                  width: width * 0.8,
                  height: 60,
                  text: 'Place Order',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderAccepted(),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
