import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'board_images.dart';

class CustomeBoard extends StatelessWidget {
  const CustomeBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 331.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoardImages(),

          SizedBox(height: 10.h,),

          ListTile(
            onTap: () {
              
            },
            title: Text(
              "Going out outfits",
              style:AppTextStyles.font20semiBold,
              ),
            subtitle:Text(
              "36 items",
              style:AppTextStyles.font12GreyRegular,
              ) ,
            trailing: Padding(
              padding: EdgeInsets.only(top: 8.h,left: 70.w),
              child: Icon(Icons.arrow_forward_ios,size: 20,color: AppColors.clothingColor,),
            ),
          
            isThreeLine: true,
          ),

          Divider(
            color:AppColors.lightGrayColor,
            indent: 15.w,
          )
        ],
      ),
    );
  }
}