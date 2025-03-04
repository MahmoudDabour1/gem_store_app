import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/discount_filter.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/filter_constants.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/gategory_dropdown.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/price_filter.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/color_filter.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/rating_filter.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
class FilterDrawer extends StatefulWidget {
  final Function(Map<String, dynamic>) onApply; const FilterDrawer({super.key, required this.onApply});
  @override
  _FilterDrawerState createState() => _FilterDrawerState();}
class _FilterDrawerState extends State<FilterDrawer> {
  double _minPrice = 10; double _maxPrice = 80;
  List<String> selectedColors = []; List<int> selectedRatings = [];
  String selectedCategory = FilterConstants.categories.first; List<String> selectedDiscounts = [];
  void resetFilters() {
    setState(() {
      _minPrice = 10; _maxPrice = 80; selectedColors.clear();selectedRatings.clear();
      selectedCategory = FilterConstants.categories.first;selectedDiscounts.clear();});}
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:AppColors.whiteColor(context),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(AppStrings.filter, style: AppTextStyles.font20GreyMedium), SvgPicture.asset(AppAssets.filterIcon, width: 30.w, height: 30.h),],),
            Divider(),
            SizedBox(height: 15.h),
            Text(AppStrings.price, style: AppTextStyles.font14Medium),
            PriceFilter(
              minPrice: _minPrice, maxPrice: _maxPrice,
              onChanged: (values) => setState(() {
                _minPrice = values.start; _maxPrice = values.end;}),),
            SizedBox(height: 20.h),
            Text(AppStrings.color, style: AppTextStyles.font14Medium),
            SizedBox(height: 15.h),
            ColorFilter(selectedColors: selectedColors, onColorToggle: (hex) => setState(() {
                selectedColors.contains(hex) ? selectedColors.remove(hex) : selectedColors.add(hex);}),),
            SizedBox(height: 20.h),
            Text(AppStrings.starRating, style: AppTextStyles.font14Medium),
            RatingFilter(selectedRatings: selectedRatings, onRatingToggle: (rating) => setState(() {
                selectedRatings.contains(rating) ? selectedRatings.remove(rating) : selectedRatings.add(rating);}),),
            SizedBox(height: 20.h),
            Text(AppStrings.category, style: AppTextStyles.font14Medium),
            CategoryDropdown(selectedCategory: selectedCategory, onCategoryChanged: (category) => setState(() {
                selectedCategory = category;}),),
            SizedBox(height: 20.h),
            Text(AppStrings.discount, style: AppTextStyles.font14Medium),
            DiscountFilter(selectedDiscounts: selectedDiscounts, onDiscountToggle: (discount) => setState(() {
                selectedDiscounts.contains(discount) ? selectedDiscounts.remove(discount) : selectedDiscounts.add(discount);}),),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: resetFilters,
                  child: Text(AppStrings.reset, style: AppTextStyles.font14Medium),
                ), CustomButton(
                  width: 90.w,
                  onPressed: () => widget.onApply({
                    "minPrice": _minPrice, "maxPrice": _maxPrice, "colors": selectedColors,
                    "ratings": selectedRatings, "category": selectedCategory, "discounts": selectedDiscounts,}),
                  text: AppStrings.apply,
                ),],),
            SizedBox(height: 10.h),
          ],),),);}}

