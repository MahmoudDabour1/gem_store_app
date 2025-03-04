import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/app_custom_button.dart';
import 'delivery_home_container.dart';

class ShoppingMethodAndButtonWidget extends StatelessWidget {
  const ShoppingMethodAndButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.shippingMethod,
          style: AppTextStyles.font25BlackBold,
        ),
        21.vs,
        DeliveryHomeContainer(),
        50.vs,
        AppCustomButton(
          onPressed: () {
            context.pushNamed(Routes.checkoutDoneScreen);
          },
          text: AppStrings.continueToPayment,
        ),
        32.vs,
      ],
    );
  }
}
