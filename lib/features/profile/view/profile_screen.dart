import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/profile/view/widgets/pick_image.dart';
import 'package:gem_store_app/features/profile/view/widgets/profile_form.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.whiteColor(context),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 75.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileImagePicker(),
              70.vs,
              const ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}