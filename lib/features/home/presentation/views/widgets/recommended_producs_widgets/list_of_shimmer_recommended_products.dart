import 'package:flutter/material.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/shimmer_of_recommended_products.dart';

class ListOfShimmerRecommendedProducts extends StatelessWidget {
  const ListOfShimmerRecommendedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ShimmerRecommendedProduct(),
        );
      },
      itemCount: 3,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
    );
  }
}
