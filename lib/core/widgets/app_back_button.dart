import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/widgets/svg_displayer.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ??
          () {
            Navigator.of(context).pop();
          },
      child: Padding(
        padding: EdgeInsets.all(10.r),
        child: Container(
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withOpacity(0.2),
                blurRadius: 10.r,
                offset: const Offset(0, 2),
              ),
            ],
            color:AppColors.whiteColor(context),
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgDisplayer(
              assetName: AppAssets.arrowLeft,
              height: 16.h,
              width: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}
