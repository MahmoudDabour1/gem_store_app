import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/List_of_category.dart';

class DiscoverCategoryItem extends StatefulWidget {
  const DiscoverCategoryItem({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    required this.colorForContainer,
  });

  final String title;
  final String image;
  final Color colorForContainer;
  final Color color;

  @override
  _DiscoverCategoryItemState createState() => _DiscoverCategoryItemState();
}

class _DiscoverCategoryItemState extends State<DiscoverCategoryItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            height: 125.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: widget.colorForContainer,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    widget.title,
                    style: AppTextStyles.font16
                        .copyWith(color: AppColors.whiteColor),
                  ),
                ),
                Spacer(),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 105.h,
                      width: 105.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color.withOpacity(0.5),
                      ),
                    ),
                    Container(
                      height: 75.h,
                      width: 75.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: widget.color,
                      ),
                    ),
                    SizedBox(
                      height: 126.h,
                      child: Image.asset(
                        widget.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        if (isExpanded)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListOfCategory(),
          )
      ],
    );
  }
}
