import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerRecommendedProduct extends StatelessWidget {
  const ShimmerRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: 203.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Shimmer.fromColors(
              baseColor: AppColors.lightGrayColor,
              highlightColor: AppColors.lightGreyText12w300Color,
              child: Container(
                height: 66.h,
                width: 66.h,
                color: AppColors.greyTextColor,
              ),
            ),
          ),
          10.hs,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Shimmer.fromColors(
                baseColor: AppColors.lightGrayColor,
                highlightColor: AppColors.lightGreyText12w300Color,
                child: Container(
                  width: 120.w,
                  height: 12.h,
                  color: AppColors.greyTextColor,
                ),
              ),
              5.vs,
              Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                child: Container(
                  width: 60.w,
                  height: 16.h,
                  color: AppColors.greyTextColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
