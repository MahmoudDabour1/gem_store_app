import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class AppCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? textStyle;
  final Color? buttonColor;

  const AppCustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.height,
    this.radius,
    this.textStyle,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor??AppColors.darkerGrayColor),
        fixedSize: WidgetStateProperty.all<Size>(
          Size(
            width??MediaQuery.sizeOf(context).width.w,
            height??48.h,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius??24.r),
          ),
        ),
      ),
      child: Text(
        text,
        style:textStyle?? AppStyles.font16WhiteSemiBold,
      ),
    );
  }
}
