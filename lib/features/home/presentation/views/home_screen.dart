import 'package:flutter/material.dart';
import 'widgets/home_screen_body.dart';
import '../../../profile/view/profileDrawer_screen.dart';

import '../../../../core/utils/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        backgroundColor: AppColors.whiteColor(context),

        drawer: ProfileDrawer(),
        body: HomeScreenBody(),
      ),
    );
  }
}
