import 'package:flutter/material.dart';
import 'package:ptc_test/core/constants/app_styles.dart';
import 'package:ptc_test/core/data/static/products_data.dart';
import 'package:ptc_test/views/screens/Beverages.dart';
import 'package:ptc_test/views/widgets/explore_item.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Products',
          style: AppStyles.stylePoppins20(context),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: productsData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        itemBuilder: (context, index) {
          return ExploreItem(
            index: index,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BeveragesPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
