import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/core/widgets/app_custom_button.dart';
import 'package:gem_store_app/core/widgets/app_text_form_field.dart';

class ProfileForm extends StatelessWidget {
  const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstNameController =
    TextEditingController(text: 'Sunie');
    final TextEditingController lastNameController =
    TextEditingController(text: 'Pham');
    final TextEditingController emailController =
    TextEditingController(text: 'sunieux@gmail.com');
    final TextEditingController genderController =
    TextEditingController(text: 'Female');
    final TextEditingController phoneController =
    TextEditingController(text: '(+1) 23456789');

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: AppTextFormField(
                controller: firstNameController,
                labelText: AppStrings.firstName,
                validator: (value) => value.isEmpty ? AppStrings.required : null,
              ),
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: AppTextFormField(
                controller: lastNameController,
                labelText: AppStrings.lastName,
                validator: (value) => value.isEmpty ? AppStrings.required : null,
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        SizedBox(
          width: double.infinity,
          child: AppTextFormField(
            controller: emailController,
            labelText: AppStrings.email,
            validator: (value) => value.isEmpty ? AppStrings.required : null,
          ),
        ),
        SizedBox(height: 30.h),
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: AppTextFormField(
                controller: genderController,
                labelText: AppStrings.gender,
                validator: (value) => value.isEmpty ? AppStrings.required : null,
              ),
            ),
            Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2 - 30,
              child: AppTextFormField(
                controller: phoneController,
                labelText: AppStrings.phone,
                validator: (value) => value.isEmpty ? AppStrings.required : null,
              ),
            ),
          ],
        ),
        SizedBox(height: 100.h),
        AppCustomButton(
          width: 200.w,
          text: AppStrings.saveChange,
          onPressed: () {},
        ),
      ],
    );
  }
}
