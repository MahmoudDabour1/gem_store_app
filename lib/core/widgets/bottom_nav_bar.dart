// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/discover/presentation/views/discover_screen.dart';
import 'package:gem_store_app/features/home/presentation/views/home_screen.dart';
import 'package:gem_store_app/features/orderinfo/views/orders_screen.dart';
import 'package:gem_store_app/features/profile/view/settings_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DiscoverScreen(),
    OrdersView(),
    SettingsScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor(context),
      body: _widgetOptions[_selectedIndex],
      extendBody: true,
      drawer: ProfileDrawer(),
      bottomNavigationBar: Container(
        padding: 10.ph + 10.pv,
        decoration: BoxDecoration(
          color:  AppColors.whiteColor(context),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.whiteColor(context),

/*
          backgroundColor: AppColors.transparent,
*/
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: _buildNavItem(Icons.home_outlined, 0),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildNavItem(Icons.search, 1),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildNavItem(Icons.shopping_bag_outlined, 2),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: _buildNavItem(Icons.person_2_outlined, 3),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return Icon(

      icon,
      color: _selectedIndex == index ? Colors.black : AppColors.navColor,
      size: 28.sp,
    );
  }
}
