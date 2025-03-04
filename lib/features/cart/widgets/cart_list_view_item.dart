
import '../../../core/helpers/public_imports.dart';
import 'cart_container_texts_widget.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              Image.asset(
                AppAssets.girlImage,
                width: 100.w,
                height: 100.h,
              ),
              13.hs,
              CartContainerTextsWidget(),
            ],
          ),
        ),
        15.vs,
      ],
    );
  }
}
