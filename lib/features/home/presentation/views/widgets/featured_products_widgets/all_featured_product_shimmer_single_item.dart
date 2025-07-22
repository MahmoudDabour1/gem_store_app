import 'package:shimmer/shimmer.dart';

import '../../../../../../core/helpers/public_imports.dart';

class AllFeaturedProductShimmerSingleItem extends StatelessWidget {
  const AllFeaturedProductShimmerSingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          period: const Duration(milliseconds: 1500),
          child: Container(
            width: double.infinity,
            height: 150.h,
            decoration: BoxDecoration(
              color: AppColors.greyTextColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        10.vs,
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          period: const Duration(milliseconds: 1500),
          child: Container(
            height: 15.h,
            width: 70.h,
            decoration: BoxDecoration(
              color: AppColors.greyTextColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        10.vs,
        Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          period: const Duration(milliseconds: 1500),
          child: Container(
            height: 15.h,
            width: 30.h,
            decoration: BoxDecoration(
              color: AppColors.greyTextColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ],
    );
  }
}
