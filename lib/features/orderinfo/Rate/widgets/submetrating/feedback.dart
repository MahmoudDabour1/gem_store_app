import 'package:flutter_svg/svg.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';



class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      contentPadding: 20.allEdgeInsets,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svgs/Check.svg', width: 100.w, height: 100.h),
          20.vs,
           Text(
            'Thank you for your feedback!',
            style: AppTextStyles.font20BlackBold.copyWith(
              color: Colors.black,
              
            ),
            textAlign: TextAlign.center,
          ),
          10.vs,
           Text(
            'We appreciated your feedback.\nWe’ll use your feedback to improve \nyour experience',
            style: AppTextStyles.font16regular.copyWith(
              color: Colors.black,
              
            ),
            textAlign: TextAlign.center,
          ),
          20.vs,
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BottomNavBar()),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.r)),
            ),
            child:  Text('Done',
                style: AppTextStyles.font16regular.copyWith(
                  color: Colors.white,
                  
                )),
          ),
        ],
      ),
    );
  }
}
