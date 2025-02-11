import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/widgets/custom_app_bar.dart';
import 'package:gem_store_app/features/discover/presentation/manager/cubit/show_searched_items_cubit.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/header_of_discover.dart';

class DiscoverScreenBody extends StatelessWidget {
  const DiscoverScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShowSearchedItemsCubit(),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
          child: Column(
            children: [
              CustomAppBar(title: 'Discover', textStyle: AppTextStyles.font20),
              SizedBox(height: 20),
              const HeaderOfDiscover(),
              SizedBox(height: 20),
              HeaderOfDiscover(),
            ],
          ),
        ),
      ),
    );
  }
}
