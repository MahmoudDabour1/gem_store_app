import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeProvider.dart';
import 'package:provider/provider.dart';

class ModeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 200.w,
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: themeProvider.isDarkMode ? Colors.grey[800] : Colors.grey[200],
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => themeProvider.toggleTheme(),
            child: AnimatedContainer(
              width: 90.w,
              duration: Duration(milliseconds: 100),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode ? Colors.transparent : AppColors.whiteColor,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: themeProvider.isDarkMode
                    ? []
                    : [BoxShadow(color: Colors.black26, blurRadius: 4)],
              ),
              child: Row(
                children: [
                  Icon(Icons.wb_sunny, color: Colors.black, size: 20),
                  SizedBox(width: 5.w),
                  Text(AppStrings.light,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Spacer(),
          GestureDetector(

            onTap: () => themeProvider.toggleTheme(),
            child: AnimatedContainer(
              width: 90.w,
              duration: Duration(milliseconds: 100),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.w),
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode ? AppColors.whiteColor : Colors.transparent,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: themeProvider.isDarkMode
                    ? [BoxShadow(color: Colors.black26, blurRadius: 4)]
                    : [],
              ),
              child: Row(
                children: [
                  Icon(Icons.nightlight_round,
                      color: Colors.grey, size: 20),
                  SizedBox(width: 5.w),
                  Text(AppStrings.dark,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}