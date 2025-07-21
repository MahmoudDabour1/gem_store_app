import 'package:shimmer/shimmer.dart';

import '../../../../../../core/helpers/public_imports.dart';

class AllFeaturedProductsShimmerGridView extends StatelessWidget {
  final int? itemCount;
  const AllFeaturedProductsShimmerGridView({super.key, this.itemCount});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.1 / 1.5,
      ),
      itemCount:itemCount??8,
      itemBuilder: (context, index) {
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
      },
    );
  }
}
