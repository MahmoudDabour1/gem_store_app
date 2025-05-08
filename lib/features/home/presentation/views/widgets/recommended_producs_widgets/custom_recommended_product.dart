import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class CustomRecommendedProduct extends StatelessWidget {
  const CustomRecommendedProduct(
      {super.key, required this.recommendedProductModel});
  final RecommendedProductModel recommendedProductModel;
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
            child: SizedBox(
              height: 66.h,
              child: CachedNetworkImage(
                  placeholder: (context, url) => ClipRRect(
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
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  imageUrl: recommendedProductModel.images.first,
                  fit: BoxFit.cover),
            ),
          ),
          10.hs,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 120.w,
                child: Text(
                  recommendedProductModel.title,
                  style: AppTextStyles.font12Darkmedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              5.vs,
              Text('\$ ${recommendedProductModel.price}',
                  style: AppTextStyles.font16DarkBold),
            ],
          ),
        ],
      ),
    );
  }
}
