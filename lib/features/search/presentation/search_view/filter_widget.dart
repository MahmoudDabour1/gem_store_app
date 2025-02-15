import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/widgets/custom_button.dart';

class FilterDrawer extends StatefulWidget {
  final Function(Map<String, dynamic>) onApply;

  const FilterDrawer({required this.onApply});

  @override
  _FilterDrawerState createState() => _FilterDrawerState();
}

class _FilterDrawerState extends State<FilterDrawer> {
  double _minPrice = 10;
  double _maxPrice = 80;
  List<String> selectedColors = [];
  List<int> selectedRatings = [];
  String selectedCategory = "Crop Tops";
  List<String> selectedDiscounts = [];
  final List<String> colors = ["#E08B2C", "#D82C2C", "#2C3E50", "#A8B0B9", "#D7AFA2"];
  final List<int> ratings = [1, 2, 3, 4, 5];
  final List<String> discounts = ["50% off", "40% off", "30% off", "25% off"];
  void resetFilters() {
    setState(() {
      _minPrice = 10;
      _maxPrice = 80;
      selectedColors.clear();
      selectedRatings.clear();
      selectedCategory = "Crop Tops";
      selectedDiscounts.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.whiteColor,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.filter, style: AppTextStyles.font20GreyMedium,),
                SvgPicture.asset(AppAssets.filterIcon,
                  width: 30.w,height: 30.h,
                ),
              ],
            ),
            Divider(),
           SizedBox(height: 15.h,),
            Text(AppStrings.price, style: AppTextStyles.font14Medium),
            RangeSlider(
              activeColor: AppColors.black33,
              values: RangeValues(_minPrice, _maxPrice),
              min: 0,
              max: 1000,
              divisions: 10,
              labels: RangeLabels("\$${_minPrice.toInt()}", "\$${_maxPrice.toInt()}"),
              onChanged: (values) {
                setState(() {
                  _minPrice = values.start;
                  _maxPrice = values.end;
                });
              },
            ),
            SizedBox(height: 20.h,),

            Text(AppStrings.color,  style: AppTextStyles.font14Medium),
            SizedBox(height: 15.h,),
            Row(
              children: colors.map((hex) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      if (selectedColors.contains(hex)) {
                        selectedColors.remove(hex);
                      } else {
                        selectedColors.add(hex);
                      }
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5.w),
                    width: 30.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(int.parse("0xFF${hex.substring(1)}")),
                      border: selectedColors.contains(hex)
                          ? Border.all(color: Colors.black, width: 2.w)
                          : null,
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 20.h,),


            Text(AppStrings.starRating,  style: AppTextStyles.font14Medium),
            SizedBox(height: 15.h,),
            Wrap(
              spacing: 8.0,
              children: ratings.map((rating) {
                return ChoiceChip(
                  backgroundColor: AppColors.whiteColor,
                  selectedColor: AppColors.black33.withOpacity(0.2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r))
                  ,
                  label: Text("★ $rating",),
                  selected: selectedRatings.contains(rating),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedRatings.add(rating);
                      } else {
                        selectedRatings.remove(rating);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            SizedBox(height: 20.h,),

            Text(AppStrings.category,  style: AppTextStyles.font14Medium),
            SizedBox(height: 15.h,),
            Container(
              width: 250.w,
              decoration: BoxDecoration(border: Border.all(color: Color(0xff33302E)),borderRadius: BorderRadius.circular(20.r)),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: DropdownButton<String>(
                  value: selectedCategory,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCategory = newValue!;
                    });
                  },
                  items: ["Crop Tops", "Dresses", "T-Shirts", "Jackets"]
                      .map<DropdownMenuItem<String>>((String category) {
                    return DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                ),
              ),
            ),

            SizedBox(height: 20.h,),


            Text(AppStrings.discount,  style: AppTextStyles.font14Medium),
            SizedBox(height: 15.h,),
            Wrap(
              spacing: 8.0,
              children: discounts.map((discount) {
                return ChoiceChip(
                  backgroundColor: AppColors.whiteColor,
                  selectedColor: AppColors.black33.withOpacity(0.2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
                  label: Text(discount,style: AppTextStyles.font13BlackW600,),
                  selected: selectedDiscounts.contains(discount),
                  onSelected: (selected) {
                    setState(() {
                      if (selected) {
                        selectedDiscounts.add(discount);
                      } else {
                        selectedDiscounts.remove(discount);
                      }
                    });
                  },
                );
              }).toList(),
            ),

            Spacer(),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed:resetFilters, child: Text(AppStrings.reset,style: AppTextStyles.font14Medium,)),
                CustomButton(
                  width: 90.w,
                  onPressed: () => widget.onApply({
                    "minPrice": _minPrice,
                    "maxPrice": _maxPrice,
                    "colors": selectedColors,
                    "ratings": selectedRatings,
                    "category": selectedCategory,
                    "discounts": selectedDiscounts,
                  }),
                  text: (AppStrings.apply),
                ),
              ],
            ),

            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}