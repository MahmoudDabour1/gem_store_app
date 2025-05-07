import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:shimmer/shimmer.dart';

class FeaturedProductsCachedNetworkImage extends StatelessWidget {
  final FeaturedProductsModel featuredProductsModel;

  const FeaturedProductsCachedNetworkImage({super.key, required this.featuredProductsModel});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.r),
      child: CachedNetworkImage(
        imageUrl: featuredProductsModel.images!.first,
        imageBuilder: (context, imageProvider) => Container(
          height: 180.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter:
                ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
          ),
        ),
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            height: 180.h,
            width: 126.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
        errorWidget: (context, url, error) => Container(
          height: 180.h,
          width: 126.w,
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
