import 'package:flutter/material.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:gem_store_app/features/profile/view/profileDrawer_screen.dart';

import '../../../../core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: ProfileDrawer(),
        backgroundColor: AppColors.white,
        body: HomeScreenBody(),
      ),
    );
  }
}
