import '../../../core/helpers/public_imports.dart';
import '../../../core/widgets/svg_displayer.dart';

class OrderCompletedTextAndImageWidget extends StatelessWidget {
  const OrderCompletedTextAndImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        43.vs,
        Text(
          AppStrings.orderCompleted,
          style: AppTextStyles.font25BlackBold,
        ),
        80.vs,
        Center(
          child: SvgDisplayer(
            assetName: AppAssets.bag,
          ),
        ),
        55.vs,
        Center(
          child: Text(
            AppStrings.thankYouForYourPurchase,
            style: AppTextStyles.font14DArkGraySemiBold.copyWith(
              fontWeight: FontWeightHelper.medium,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        108.vs,
      ],
    );
  }
}
