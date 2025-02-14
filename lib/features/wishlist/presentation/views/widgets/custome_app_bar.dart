import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_text_styles.dart';


class CustomeWishListAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomeWishListAppBar({super.key});

  @override
  Size get preferredSize => Size(double.maxFinite/4,
              double.maxFinite/4);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w,right:20.w, top: 20.h),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
            GestureDetector(
              onTap: () {
                
              },
              child: Image.asset("assets/images/appbar_menu_icon.png"),
            ),
      
            Text(
              "My Wishlist",
              style: AppTextStyles.font18BlackSemiBold,
              ),
      
              GestureDetector(
                onTap: () {
                  
                },
      
                child: Image.asset("assets/images/Bell_pin (1).png"),
              )
      
      
          ],
          
        ),
      ),
    );
  }
  
  

}