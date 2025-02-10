import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/spacing.dart';
import 'dotted_line_painter.dart';

class LocationAndDoneShape extends StatelessWidget {
  final String ?changeDoneImage;
  const LocationAndDoneShape({super.key,this.changeDoneImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        children: [
          SvgPicture.asset("assets/svgs/location_black_svg.svg"),
          horizontalSpace(20),
          Expanded(
            child: CustomPaint(
              painter: DottedLinePainter(),
              child: SizedBox(
                height: 70.h,
              ), // Adjust height to match the line
            ),
          ),
          horizontalSpace(66),
          Expanded(
            child: CustomPaint(
              painter: DottedLinePainter(),
              child: SizedBox(
                height: 70.h,
              ), // Adjust height to match the line
            ),
          ),
          horizontalSpace(20),
          SvgPicture.asset(changeDoneImage??"assets/svgs/done_gray_svg.svg"),
        ],
      ),
    );
  }
}
