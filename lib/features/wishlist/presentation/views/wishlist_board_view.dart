import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/wishlist/presentation/views/widgets/custome_app_bar.dart';
import 'package:gem_store_app/features/wishlist/presentation/views/widgets/custome_board.dart';


class WishlistBoardView extends StatelessWidget {
  const WishlistBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomeWishListAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 67.h),
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
