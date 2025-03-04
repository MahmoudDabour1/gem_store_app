import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final Function(double) onRatingUpdate;

  const CustomRatingBar({required this.rating, required this.onRatingUpdate});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 50,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
      itemBuilder: (_, __) => Icon(Icons.star, color: AppColors.starColor),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
