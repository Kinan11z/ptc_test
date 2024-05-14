import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/core/data/static/my_cart_data.dart';
import 'package:ptc_test/views/widgets/checkout_bottom_sheet.dart';
import 'package:ptc_test/views/widgets/custom_button.dart';
import 'package:ptc_test/views/widgets/my_cart_item.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        shape: const Border(
          bottom: BorderSide(
            color: AppColors.borderGreyColor,
            width: 1,
          ),
        ),
        title: Text(
          'My Cart',
          style: AppStyles.stylePoppins20(context),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: myCartData.length,
            padding: const EdgeInsets.only(top: 20),
            itemBuilder: (context, index) {
              return MyCartItem(index: index);
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                width: width * 0.8,
                height: 60,
                text: 'Go to Checkout',
                onTap: () {
                  checkoutBottomSheet(context: context, width: width);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
