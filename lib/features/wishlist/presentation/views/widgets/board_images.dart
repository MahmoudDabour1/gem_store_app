import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BoardImages extends StatelessWidget {
  const BoardImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 331.w,
      padding: EdgeInsets.all(0),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
      
        borderRadius: BorderRadius.circular(34) ),
      child: Row(
        children: [
          
            Expanded(
              flex: 2,
              child: Image.asset("assets/images/image.png",fit: BoxFit.fill,height: 150.h,),
            ),
            SizedBox(width: 4.w,),
            Expanded(
              flex: 2,
              child: Image.asset("assets/images/image.png",height: 150.h,fit: BoxFit.fill,),
            ),
            SizedBox(
                  width: 4.w,
                ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/image.png",
                  height: 85.h,
                  width: 53.w,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Expanded(
                  child: Image.asset(
                    "assets/images/image.png",
                    width: 53.w,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 3.w,
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/image.png",
                      width: 53.w,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Image.asset(
                    "assets/images/image.png",
                    height: 85.h,
                    width: 53.w,
                    fit: BoxFit.fill,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
