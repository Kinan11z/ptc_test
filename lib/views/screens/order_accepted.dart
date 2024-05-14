import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/constants/app_images.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/views/widgets/bottom_navigation_bar.dart';
import 'package:ptc_test/views/widgets/custom_button.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const SizedBox(height: 100),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  AppImages.success,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 60),
            SizedBox(
              width: width * 0.7,
              child: Text(
                'Your Order has been accepted',
                style: AppStyles.stylePoppins28(context),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: width * 0.7,
              child: Text(
                'Your items has been placcd and is on it’s way to being processed',
                style: AppStyles.stylePoppins16(context)
                    .copyWith(color: AppColors.textGreyColor),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 100),
            CustomButton(
              width: width * 0.9,
              height: 60,
              text: 'Track Order',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PtcBottomNavigationBar(),
                  ),
                );
              },
              child: Text(
                'Back to home',
                style: AppStyles.stylePoppins18(context)
                    .copyWith(color: AppColors.black),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
