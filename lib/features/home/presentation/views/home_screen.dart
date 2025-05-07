import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../profile/view/profiledrawer_screen.dart';
import 'widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(sl())..getFeaturedProducts(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.whiteColor(context),
          drawer: ProfileDrawer(),
          body: HomeScreenBody(),
        ),
      ),
    );
  }
}
