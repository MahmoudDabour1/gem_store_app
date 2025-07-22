import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'widgets/custome_board.dart';

class WishlistBoardView extends StatelessWidget {
  const WishlistBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,

      drawer: ProfileDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                title: 'Wishlist',
                textStyle: AppTextStyles.font20BlackBold,
              ),
              67.vs,
              ...List.generate(4, (index) {
                return CustomeBoard();
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
