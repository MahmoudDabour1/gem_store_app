import 'package:gem_store_app/core/widgets/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../../core/helpers/public_imports.dart';

class FeaturedProductShimmerListView extends StatelessWidget {
  const FeaturedProductShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
            padding: EdgeInsets.only(
              left: 25.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[300]!,
                  highlightColor: Colors.grey[100]!,
                  period: const Duration(milliseconds: 1500),
                  child: Container(
                    height: 180.h,
                    width: 126.h,
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
                    height: 20.h,
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
                    height: 20.h,
                    width: 30.h,
                    decoration: BoxDecoration(
                      color: AppColors.greyTextColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
                // ShimmerWidget(height: 180.h, width:126.w ),
                // 10.vs,
                // ShimmerWidget(height: 10.h, width:30.w ),
                // 10.vs,
                // ShimmerWidget(height: 10.h, width:30.w ),
              ],
            ));
      },
    );
  }
}
