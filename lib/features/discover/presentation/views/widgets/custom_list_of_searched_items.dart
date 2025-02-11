import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/custom_searched_item.dart';

class CustomListOfSearchedItems extends StatelessWidget {
  const CustomListOfSearchedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Found\n152 Results',
            style: AppTextStyles.font20.copyWith(color: Color(0xFF33302E))),
        SizedBox(height: 20.h),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.w,
            mainAxisSpacing: 8.h,
            childAspectRatio: 0.59,
          ),
          itemBuilder: (context, index) {
            return CustomSearchedItem();
          },
        ),
      ],
    );
  }
}
