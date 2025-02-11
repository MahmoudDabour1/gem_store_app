import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/untils/app_assets.dart';

class CustomeItem extends StatelessWidget {
  const CustomeItem({
    super.key,
    required this.page, required this.index,
  });

  final int page;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: page != index ? EdgeInsets.all(25) : EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          color: Color(0xFFE7E8E9),
          borderRadius: BorderRadius.all(Radius.circular(7))),
      child: Image.asset(
        AppAssets.imagesOboardeingItems[index],
        fit: BoxFit.contain,
      ),
    );
  }
}
