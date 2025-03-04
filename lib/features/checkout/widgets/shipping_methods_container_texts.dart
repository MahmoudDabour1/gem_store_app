import 'package:gem_store_app/core/helpers/public_imports.dart';

class ShippingMethodsContainerTexts extends StatelessWidget {
  const ShippingMethodsContainerTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              AppStrings.free,
              style: AppTextStyles.font14DarkGrayMedium,
            ),
            20.hs,
            Text(
              AppStrings.deliveryToHome,
              style: AppTextStyles.font14DarkGrayMedium,
            ),
          ],
        ),
        Text(
          AppStrings.deliveryFrom3To7BusinessDays,
          style: AppTextStyles.font12GreyLight,
        ),
      ],
    );
  }
}
