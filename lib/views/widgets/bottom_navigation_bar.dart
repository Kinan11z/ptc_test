import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ptc_test/controller/bottom_Navigation_bloc/bottom_Navigation_bloc.dart';
import 'package:ptc_test/core/constants/app_colors.dart';
import 'package:ptc_test/core/data/static/navigation_data.dart';
import 'package:ptc_test/views/screens/explore_page.dart';
import 'package:ptc_test/views/screens/my_cart.dart';

class PtcBottomNavigationBar extends StatelessWidget {
  const PtcBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const Scaffold(),
      const ExplorePage(),
      const MyCartPage(),
      const Scaffold(),
      const Scaffold(),
    ];
    int selectedIndix = 1;
    return BlocProvider(
      create: (context) => BottomNavigationBloc(),
      child: BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
        listener: (context, state) {
          if (state is NavigateToNewBarState) {
            selectedIndix = state.newIndex;
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: pages[selectedIndix],
            bottomNavigationBar: NavigationBar(
              animationDuration: const Duration(seconds: 3),
              elevation: 0,
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              indicatorColor: Colors.transparent,
              backgroundColor: AppColors.white,
              selectedIndex: selectedIndix,
              onDestinationSelected: (value) {
                context
                    .read<BottomNavigationBloc>()
                    .add(NavigateToNewBarEvent(newIndex: value));
              },
              destinations: [
                ...List.generate(
                  navigationData.length,
                  (index) {
                    return NavigationDestination(
                      icon: SvgPicture.asset(navigationData[index].icon),
                      selectedIcon: SvgPicture.asset(
                        navigationData[index].icon,
                        colorFilter: const ColorFilter.mode(
                            AppColors.primaryColor, BlendMode.srcIn),
                      ),
                      label: navigationData[index].label,
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
