import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../controller/home_cubit.dart';

class SortByPriceDropDownButton extends StatefulWidget {
  const SortByPriceDropDownButton({super.key});

  @override
  State<SortByPriceDropDownButton> createState() =>
      _SortByPriceDropDownButtonState();
}

class _SortByPriceDropDownButtonState extends State<SortByPriceDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: DropdownButton<String>(
        isDense: true,
        dropdownColor: AppColors.white,
        borderRadius: BorderRadius.circular(10.r),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        value:
            context.read<HomeCubit>().isAscending ? "Ascending" : "Descending",
        items: [
          DropdownMenuItem(
            value: "Ascending",
            child: Row(
              children: [
                Icon(Icons.arrow_upward, color: Colors.black),
                SizedBox(width: 8),
                Text("Ascending"),
              ],
            ),
          ),
          DropdownMenuItem(
            value: "Descending",
            child: Row(
              children: [
                Icon(Icons.arrow_downward, color: Colors.black),
                SizedBox(width: 8),
                Text("Descending"),
              ],
            ),
          ),
        ],
        onChanged: (value) {
          if (value != null) {
            final cubit = context.read<HomeCubit>();
            cubit.sortProductsByPrice(ascending: value == "Ascending");
            setState(() {});
          }
        },
        underline: Container(),
        icon: Icon(Icons.arrow_drop_down, color: Colors.black),
        style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
