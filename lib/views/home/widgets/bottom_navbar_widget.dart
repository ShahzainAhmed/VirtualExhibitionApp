import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:virtual_exhibition_app/resources/app_colors.dart';
import 'package:virtual_exhibition_app/views/exhibition/exhibition_screen.dart';
import 'package:virtual_exhibition_app/views/home/home_screen.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  int _bottomNavIndex = 0;

  List<Widget> pages = [
    const HomeScreen(), // index 0
    const ExhibitionScreen(), // index 1
    const HomeScreen(), // index 2
    const HomeScreen(), // index 3
  ];
  
  // Icon list for the navigation bar
  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.person,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_bottomNavIndex],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
        buttonBackgroundColor: AppColors.kBlackColor,
        backgroundColor: AppColors.kBackgroundColor,
        color: AppColors.kDarkGreyColor.withValues(alpha: 0.1),
        items: [
          CurvedNavigationBarItem(
            child: Icon(
              size: _bottomNavIndex == 0 ? 30 : 26,
              Icons.home_outlined,
              color: _bottomNavIndex == 0
                  ? AppColors.kWhiteColor
                  : AppColors.kDarkGreyColor,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.my_location_sharp,
              size: _bottomNavIndex == 1 ? 30 : 26,
              color: _bottomNavIndex == 1
                  ? AppColors.kWhiteColor
                  : AppColors.kDarkGreyColor,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.shopping_cart_outlined,
              size: _bottomNavIndex == 2 ? 30 : 26,
              color: _bottomNavIndex == 2
                  ? AppColors.kWhiteColor
                  : AppColors.kDarkGreyColor,
            ),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              size: _bottomNavIndex == 3 ? 30 : 26,
              Icons.person_outline_sharp,
              color: _bottomNavIndex == 3
                  ? AppColors.kWhiteColor
                  : AppColors.kDarkGreyColor,
            ),
          ),
        ],
      ),
    );
  }
}
