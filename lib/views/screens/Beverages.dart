import 'package:flutter/material.dart';
import 'package:ptc_test/core/data/static/beverages_data.dart';
import 'package:ptc_test/views/widgets/beverage_item.dart';
import 'package:ptc_test/views/widgets/beverages_appbar.dart';

class BeveragesPage extends StatelessWidget {
  const BeveragesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: BeveragesAppBar(),
      ),
      body: GridView.builder(
        itemCount: beveragesData.length,
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15),
        itemBuilder: (context, index) {
          return BeverageItem(
            index: index,
            onTap: () {},
          );
        },
      ),
    );
  }
}
