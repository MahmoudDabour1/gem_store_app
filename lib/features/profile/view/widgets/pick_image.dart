import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({super.key});

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}
class _ProfileImagePickerState extends State<ProfileImagePicker> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future<void> _pickImage() async {
    final XFile? pickedFile = await showDialog<XFile?>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(title: Text(AppStrings.choosePhoto),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt), title: Text(AppStrings.camera),
                onTap: () async {
                  Navigator.of(context).pop(
                      await _picker.pickImage(source: ImageSource.camera));},),
              ListTile(
                leading: Icon(Icons.photo_library), title: Text(AppStrings.gallery),
                onTap: () async {
                  Navigator.of(context).pop(
                      await _picker.pickImage(source: ImageSource.gallery));},
              ),],),);},);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });}}
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 50.r,
          backgroundImage: _image == null ? AssetImage(AppAssets.profilePhoto) as ImageProvider : FileImage(_image!),),
        Positioned(
          bottom: 0, right: 0,
          child: GestureDetector(onTap: _pickImage,
            child: CircleAvatar(
              radius: 14.0.r, backgroundColor: AppColors.black33,
              child: Icon(
                Icons.camera_alt_outlined, size: 16.0, color: AppColors.whiteColor(context),),
            ),),),],);
  }}

