import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/features/search/presentation/search_view/setting/models/setting_row_model.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    super.key, required this.settingRowModel,
  });
 
  final SettingRowModel settingRowModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.sp,
          child: Row(
            children: [
              Image.asset(settingRowModel.image),
              horizontalSpace(20),
              Text(
                settingRowModel.name,
                style: AppTextStyles.font14Medium,
              ),
              Spacer(
                flex: 1,
              ),
              SvgPicture.asset(AppAssets.rightArrow),
              horizontalSpace(5)
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
