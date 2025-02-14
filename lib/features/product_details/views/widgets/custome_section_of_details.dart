import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomeSectionOfDetails extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const CustomeSectionOfDetails({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: Border.all(color: Colors.white),
      tilePadding: EdgeInsets.only(right: 10.w),
      childrenPadding: EdgeInsets.only(bottom: 14.w),
      iconColor: Colors.black,
      title: Text(
        title,
        style: AppTextStyles.font16regular,
      ),
      children: 
        children
      ,
    );
  }
}
