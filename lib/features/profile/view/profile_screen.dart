import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/core/widgets/app_custom_button.dart';
import 'package:gem_store_app/core/widgets/app_text_form_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async {
    final XFile? pickedFile = await showDialog<XFile?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(AppStrings.choosePhoto),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text(AppStrings.camera),
                onTap: () async {
                  if (await _requestPermission(Permission.camera)) {
                    Navigator.of(context).pop(
                        await _picker.pickImage(source: ImageSource.camera));
                  } else {
                    Navigator.of(context).pop(null);
                  }
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text(AppStrings.gallery),
                onTap: () async {
                  if (await _requestPermission(Permission.storage)) {
                    Navigator.of(context).pop(
                        await _picker.pickImage(source: ImageSource.gallery));
                  } else {
                    Navigator.of(context).pop(null);
                  }
                },
              ),
            ],
          ),
        );
      },
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<bool> _requestPermission(Permission permission) async {
    if (await permission.isGranted) {
      return true;
    } else {
      final status = await permission.request();
      return status == PermissionStatus.granted;
    }
  }

  final TextEditingController _firstNameController =
      TextEditingController(text: 'Sunie');
  final TextEditingController _lastNameController =
      TextEditingController(text: 'Pham');
  final TextEditingController _emailController =
      TextEditingController(text: 'sunieux@gmail.com');
  final TextEditingController _genderController =
      TextEditingController(text: 'Female');
  final TextEditingController _phoneController =
      TextEditingController(text: '(+1) 23456789');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 75.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundImage: _image == null
                        ? AssetImage(AppAssets.profilePhoto) as ImageProvider
                        : FileImage(
                            _image!,
                          ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 14.0.r,
                        backgroundColor: AppColors.black33,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 16.0,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70.h),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: AppTextFormField(
                          controller: _firstNameController,
                          labelText: AppStrings.firstName,
                          validator: (value) =>
                              value.isEmpty ? AppStrings.required : null,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: AppTextFormField(
                          controller: _lastNameController,
                          labelText: AppStrings.lastName,
                          validator: (value) =>
                              value.isEmpty ? AppStrings.required : null,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: AppTextFormField(
                      controller: _emailController,
                      labelText: AppStrings.email,
                      validator: (value) =>
                          value.isEmpty ? AppStrings.required : null,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: AppTextFormField(
                          controller: _genderController,
                          labelText: AppStrings.gender,
                          validator: (value) =>
                              value.isEmpty ? AppStrings.required : null,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: AppTextFormField(
                          controller: _phoneController,
                          labelText: AppStrings.phone,
                          validator: (value) =>
                              value.isEmpty ? AppStrings.required : null,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
