import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/wishlist/presentation/views/widgets/displayed_image.dart';

class BoardImages extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.

  const BoardImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 331.w,
      padding: 0.allEdgeInsets,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(34)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: DisplayedImage.LargerImage,
          ),
          4.hs,
          Expanded(
            flex: 2,
            child: DisplayedImage.LargerImage,
          ),
          4.hs,
          Expanded(
            flex: 1,
            child: Column(
              children: [
                DisplayedImage.MediumImage,
                2.vs,
                Expanded(
                  child: DisplayedImage.VerySmallImage,
                ),
              ],
            ),
          ),
          3.hs,
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: DisplayedImage.VerySmallImage,
                  ),
                  2.vs,
                  DisplayedImage.MediumImage,
                ],
              )),
        ],
      ),
    );
  }
}
