import 'package:flutter/material.dart';
import 'package:ptc_test/views/screens/splash_page.dart';

void main() {
  runApp(const PtcTest());
}

class PtcTest extends StatelessWidget {
  const PtcTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
