import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/core/data/static/my_cart_data.dart';
import 'package:ptc_test/views/widgets/button_add_cart.dart';
import 'package:ptc_test/views/widgets/button_minus_cart.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                myCartData[index].image,
                width: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myCartData[index].title,
                    style: AppStyles.stylePoppins16(context)
                        .copyWith(color: AppColors.black),
                  ),
                  Text(
                    myCartData[index].amount,
                    style: AppStyles.stylePoppins14(context),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      ButtonMinimize(
                        onTap: () {},
                      ),
                      const SizedBox(width: 15),
                      const Text('1'),
                      const SizedBox(width: 15),
                      ButtonAddCart(
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.minusGreyColor,
                    ),
                  ),
                  Text(
                    '\$${myCartData[index].price}',
                    style: AppStyles.stylePoppins18(context)
                        .copyWith(color: AppColors.black),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.9,
          child: const Divider(
            height: 50,
            color: AppColors.borderGreyColor,
          ),
        ),
      ],
    );
  }
}
