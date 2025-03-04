import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../manager/cubit/show_searched_items_cubit.dart';
import 'header_of_discover.dart';

class DiscoverScreenBody extends StatelessWidget {
  const DiscoverScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowSearchedItemsCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: 25.all,
          child: Column(
            children: [
              CustomAppBar(
                  title: AppStrings.discover,
                  textStyle: AppTextStyles.font20BlackRegular),
              SizedBox(height: 20),
              HeaderOfDiscover(),
              //Expanded(child: HeaderOfDiscover()),
            ],
          ),
        ),
      ),
    );
  }
}
