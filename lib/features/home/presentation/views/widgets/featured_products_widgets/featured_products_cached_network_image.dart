import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedProductsCachedNetworkImage extends StatelessWidget {
  final FeaturedProductsModel featuredProductsModel;
  final double? height;
  final double? width;

  const FeaturedProductsCachedNetworkImage({
    super.key,
    required this.featuredProductsModel,
     this.height,
     this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: CachedNetworkImage(
        imageUrl: featuredProductsModel.images!.first,
        imageBuilder: (context, imageProvider) => Container(
          height: height??180.h,
          width: width??126.w,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.fill,
            ),
          ),
        ),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: height??180.h,
            width: width??126.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          height: height??180.h,
          width: width??126.w,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: const Icon(Icons.error),
        ),
      ),
    );
  }
}
