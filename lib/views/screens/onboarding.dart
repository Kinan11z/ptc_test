import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ptc_test/core/constants/app_images.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/views/widgets/bottom_navigation_bar.dart';
import 'package:ptc_test/views/widgets/custom_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.onboarding,
              ),
              fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(flex: 5),
            SvgPicture.asset(AppImages.carrot),
            const SizedBox(height: 20),
            Text(
              'Welcome\n to our store',
              style: AppStyles.stylePoppins48(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Ger your groceries in as fast as one hour',
              style: AppStyles.stylePoppins16(context),
            ),
            const SizedBox(height: 40),
            CustomButton(
              width: width * 0.85,
              height: 60,
              text: 'Get Started',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PtcBottomNavigationBar(),
                  ),
                );
              },
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
