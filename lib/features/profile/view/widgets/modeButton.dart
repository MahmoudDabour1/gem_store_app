import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'themeProvider.dart';
import 'package:provider/provider.dart';

class ModeButton extends StatelessWidget {
  const ModeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Container(
      width: 220.w,
      padding: 4.allEdgeInsets,
      decoration: BoxDecoration(
        color: Color(0xffF4F4F4) ,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => themeProvider.toggleTheme(),
            child: AnimatedContainer(
              width: 90.w,
              duration: const Duration(milliseconds: 100),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode
                    ? Colors.transparent
                    : Colors.white,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: themeProvider.isDarkMode
                    ? []
                    : [BoxShadow(color: Colors.black26, blurRadius: 4)],
              ),
              child: Row(
                children: [
                  Icon(Icons.wb_sunny, color: Colors.black, size: 20),
                  SizedBox(width: 5.w),
                  Text(
                    'Light',
                    style: TextStyle(
                      fontSize: 14.sp,
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => themeProvider.toggleTheme(),
            child: AnimatedContainer(
              width: 90.w,
              duration: const Duration(milliseconds: 100),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              decoration: BoxDecoration(
                color: themeProvider.isDarkMode
                    ? Colors.white
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: themeProvider.isDarkMode
                    ? [BoxShadow(color: Colors.black26, blurRadius: 4)]
                    : [],
              ),
              child: Row(
                children: [
                  Icon(Icons.nightlight_round, color: Colors.grey, size: 20),
                  SizedBox(width: 5.w),
                  Text(
                    'Dark',
                    style: TextStyle(
                      fontSize: 14.sp,
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




