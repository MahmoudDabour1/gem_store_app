import '../../../core/helpers/public_imports.dart';
import 'counter_container_widget.dart';

class CartContainerTextsWidget extends StatelessWidget {
  const CartContainerTextsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        5.vs,
        Row(
          children: [
            Text(
              AppStrings.turtleneckSweater,
              style: AppTextStyles.font18BlackSemiBold,
            ),
          ],
        ),
        13.vs,
        Text(
          "\$ ${AppStrings.price39}",
          style: AppTextStyles.font18BlackSemiBold.copyWith(
            fontSize: 16.sp,
          ),
        ),
        Center(
          child: Row(
            children: [
              Text(
                AppStrings.sizeBlack,
                style: AppTextStyles.font12Darkmedium,
              ),
              8.hs,
              CounterContainerWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
