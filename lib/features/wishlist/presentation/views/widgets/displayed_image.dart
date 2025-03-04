
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisplayedImage{

  static Image LargerImage = Image.asset(
    "assets/images/image.png",
    fit: BoxFit.fill,
    height: 150.h,
  );

  static Image MediumImage = Image.asset(
    "assets/images/image.png",
    height: 85.h,
    width: 53.w,
    fit: BoxFit.fill,
  );

  static Image VerySmallImage = Image.asset(
    "assets/images/image.png",
    width: 53.w,
    fit: BoxFit.fill,
  );
}