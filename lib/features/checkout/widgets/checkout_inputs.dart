import '../../../core/helpers/public_imports.dart';
import 'country_drop_down_widget.dart';
import '../../../core/widgets/app_text_form_field.dart';

class CheckoutInputs extends StatelessWidget {
  const CheckoutInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
            labelText: AppStrings.firstName, validator: (value) {}),
        35.vs,
        AppTextFormField(labelText: AppStrings.lastName, validator: (value) {}),
        35.vs,
        SizedBox(height: 50.h, child: CountryDropdownWidget()),
        35.vs,
        AppTextFormField(
            labelText: AppStrings.streetName, validator: (value) {}),
        35.vs,
        AppTextFormField(labelText: AppStrings.city, validator: (value) {}),
        35.vs,
        AppTextFormField(
            labelText: AppStrings.stateProvince, validator: (value) {}),
        35.vs,
        AppTextFormField(labelText: AppStrings.zipCode, validator: (value) {}),
        35.vs,
        AppTextFormField(
            labelText: AppStrings.phoneNumber, validator: (value) {}),
      ],
    );
  }
}
