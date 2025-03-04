import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/checkout/widgets/check_out_upper_widget.dart';
import 'package:gem_store_app/features/checkout/widgets/checkout_inputs.dart';
import 'package:gem_store_app/features/checkout/widgets/shopping_method_and_button_widget.dart';
import '../../core/widgets/app_custom_app_bar.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppStrings.checkout),
      body: Padding(
        padding: 24.ph,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CheckOutUpperWidget(),
                CheckoutInputs(),
                61.hs,
                ShoppingMethodAndButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
