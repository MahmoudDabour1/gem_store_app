import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';

class CustomRatingBar extends StatelessWidget {
  final double rating;
  final Function(double) onRatingUpdate;

  const CustomRatingBar({super.key, required this.rating, required this.onRatingUpdate});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 50,
      initialRating: rating,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: 3.ph,
      itemBuilder: (_, __) => Icon(Icons.star, color: AppColors.starColor),
      onRatingUpdate: onRatingUpdate,
    );
  }
}
