import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/checkout/widgets/shipping_methods_container_texts.dart';


class DeliveryHomeContainer extends StatelessWidget {
  const DeliveryHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      decoration: BoxDecoration(
        color: AppColors.moreLighterGrayColor,
        shape: BoxShape.rectangle,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: AppColors.lightGrayColor,
            width: 1.w,
          ),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Radio.adaptive(
              value: null,
              groupValue: null,
              onChanged: null,
              activeColor: AppColors.greenColor,
              splashRadius: 50.r,
              fillColor: WidgetStateProperty.all(AppColors.greenColor),
            ),
            ShippingMethodsContainerTexts(),
          ],
        ),
      ),
    );
  }
}
