import 'package:gem_store_app/core/helpers/public_imports.dart';


class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 48.h,
      decoration: ShapeDecoration(
        color: AppColors.lightGreyText20Color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text("Submit Review", style: AppTextStyles.font20White),
      ),
    );
  }
}
