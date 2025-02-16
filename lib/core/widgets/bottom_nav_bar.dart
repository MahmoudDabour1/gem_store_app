import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/discover/presentation/views/discover_screen.dart';
import 'package:gem_store_app/features/home/presentation/views/home_screen.dart';
import 'package:gem_store_app/features/orderinfo/views/orders_screen.dart';
import 'package:gem_store_app/features/profile/view/profile_screen.dart';
import 'package:gem_store_app/features/profile/view/profile_screen.dart';
import 'package:gem_store_app/features/profile/view/settings_screen.dart';
import 'package:gem_store_app/features/search/presentation/search_view/search_screen.dart';
import 'package:gem_store_app/features/track_order/track_order.dart';

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
      body: _widgetOptions[_selectedIndex],
      extendBody: true,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
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
          backgroundColor: Colors.transparent,
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
