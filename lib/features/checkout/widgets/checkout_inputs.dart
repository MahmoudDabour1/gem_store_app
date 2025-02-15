import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/checkout/widgets/country_drop_down_widget.dart';

import '../../../core/widgets/app_text_form_field.dart';

class CheckoutInputs extends StatelessWidget {
  const CheckoutInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
     // spacing: 35.h,
      children: [
        AppTextFormField(labelText: "First name *", validator: (value) {}),
        AppTextFormField(labelText: "Last name *", validator: (value) {}),
        SizedBox(height: 50.h, child: CountryDropdownWidget()),
        AppTextFormField(labelText: "Street name *", validator: (value) {}),
        AppTextFormField(labelText: "City *", validator: (value) {}),
        AppTextFormField(labelText: "State / Province", validator: (value) {}),
        AppTextFormField(labelText: "Zip-code *", validator: (value) {}),
        AppTextFormField(labelText: "Phone number *", validator: (value) {}),
      ],
    );
  }
}
