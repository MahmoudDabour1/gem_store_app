import '../../../core/helpers/public_imports.dart';
import 'location_and_done_shape.dart';

class CheckOutUpperWidget extends StatelessWidget {
  const CheckOutUpperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LocationAndDoneShape(),
        Text(
          AppStrings.step1,
          style: AppTextStyles.font11BlackLight,
        ),
        Text(
          AppStrings.shipping,
          style: AppTextStyles.font25BlackBold,
        ),
        37.vs,
      ],
    );
  }
}
