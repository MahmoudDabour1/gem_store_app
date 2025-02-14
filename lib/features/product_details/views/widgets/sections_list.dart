import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/font_weight_helper.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/features/product_details/views/widgets/total_review_info.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'custome_review.dart';
import 'custome_section_of_details.dart';



class SectionsList extends StatelessWidget {
  const SectionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         CustomeSectionOfDetails(title: "Description", children: [
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            textAlign: TextAlign.justify,
            'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
            style: AppTextStyles.font12regular,
          ),
        ]),
        verticalSpace(10),
        CustomeSectionOfDetails(title: "Reviews", children: [
          TotalReviewInfo(finalRate: 4.9, totalRates: 85),
          verticalSpace(10),

          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(
                child: CustomeReview(
                  userName: "Kelly Rihana",
                  userImageUrl: AppAssets.imagesTestItem,
                  dateOfReview: "5m ago",
                  rate: 5,
                  review:
                      "I'm very happy with order, It was delivered on and good quality. Recommended!",
                ),
              );
            },
          )
        ]),
        CustomeSectionOfDetails(
            title: "Similar Products",
            children: [
              SizedBox(
                // width: d,
                height: 240.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10.w),
                      height: 230.h,
                      width: 130.w,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
        
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            fit: BoxFit.fill,
                            "assets/images/Similar_item_test.png",width: 130.w,height: 150.h,
                            ),
                
                          Text("Rise Crop Hoodie",style: AppTextStyles.font12BlackRegular.copyWith(height: 2.h),
                          ),
                
                          Text("\$ 43.00",style: AppTextStyles.font14Medium.copyWith(fontWeight: FontWeightHelper.semiBold),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )
            ]
            )
      ],
    );
  }
}