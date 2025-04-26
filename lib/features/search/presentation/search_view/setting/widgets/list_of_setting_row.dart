import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/features/search/presentation/search_view/setting/models/setting_row_model.dart';
import 'package:gem_store_app/features/search/presentation/search_view/setting/widgets/setting_row.dart';


class ListOfSettingRowWidget extends StatelessWidget {
   ListOfSettingRowWidget({super.key});
  final List<SettingRowModel> settingRowModel = [
    SettingRowModel(name: AppStrings.language, image: AppAssets.language),
    SettingRowModel(name: AppStrings.termsOfUse, image: AppAssets.termsOfUse),
    SettingRowModel(name: AppStrings.privacyPolicy, image: AppAssets.pricavyPolicy),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      
        itemBuilder: (BuildContext context, int index) {
          return SettingRow(settingRowModel: settingRowModel[index]);
        },
        itemCount: settingRowModel.length);
  }
}
