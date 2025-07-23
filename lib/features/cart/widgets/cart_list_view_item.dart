
import '../../../core/helpers/public_imports.dart';
import 'cart_container_texts_widget.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 10.h,
      child: 
        
          Container(
            // height: 160.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color:AppColors.whiteColor(context),
              // borderRadius: BorderRadius.circular(20.r),
            ),
            child: Row(
              children: [
                Image.asset(
                  AppAssets.girlImage,
                  width: 100.w,
                  height: 160.h,
                  fit: BoxFit.fitWidth,
                ),
                13.hs,
                CartContainerTextsWidget(),
              ],
            ),
          ),
          // 15.vs,
      
      
    );
  }
}
