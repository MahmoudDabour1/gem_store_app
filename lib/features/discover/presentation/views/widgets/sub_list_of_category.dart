import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class SubListOfCategoru extends StatelessWidget {
  const SubListOfCategoru({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        dividerColor: AppColors.lightGreyColor,
      ),
      child: ExpansionTile(
        collapsedBackgroundColor: Colors.transparent,
        title: Text(
          'Clothing',
          style: AppTextStyles.font14BlackRegular,
        ),
        trailing: SizedBox(
          width: 70.w,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '24 Items',
                style: AppTextStyles.font12GreyRegular
                    .copyWith(color: Color(0xFFA3A5AD)),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
              ),
            ],
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              children: List.generate(
                2,
                (index) => Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Jeans',
                        style: AppTextStyles.font14BlackRegular,
                      ),
                      trailing: SizedBox(
                        width: 70.w,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '24 Items',
                              style: AppTextStyles.font12GreyRegular
                                  .copyWith(color: Color(0xFFA3A5AD)),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
