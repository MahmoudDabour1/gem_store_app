import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/sub_list_of_category.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SubListOfCategoru();
        },
        separatorBuilder: (context, index) =>
            Divider(color: AppColors.lightGreyColor, thickness: 3.h),
        itemCount: 3);
  }
}
