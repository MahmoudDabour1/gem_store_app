import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'custom_searched_item.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomListOfSearchedItems extends StatelessWidget {
  const CustomListOfSearchedItems({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text('Found\n152 Results',
              style: AppTextStyles.font20BlackRegular
                  .copyWith(color: Color(0xFF33302E))),
        ),
        SliverToBoxAdapter(child: 20.vs),
        SliverGrid.builder(
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
