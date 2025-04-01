import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/submetrating/feedback.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/submetrating/ratingbar.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/submetrating/reviewtext.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/submetrating/submetbuttom.dart';
import '../../../../core/utils/spacing.dart';


class Ratiereview extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.
  const Ratiereview({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: 30.ph,
        child: _ReviewForm(),
      ),
    );
  }
}

class _ReviewForm extends StatefulWidget {
  const _ReviewForm();

  @override
  State<_ReviewForm> createState() => _ReviewFormState();
}

class _ReviewFormState extends State<_ReviewForm> {
  final double _rating = 3.5;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        30.vs,
        CustomRatingBar(
            rating: _rating,
            onRatingUpdate: (rating) => setState(() => rating = rating)),
        verticalSpace(30),
        ReviewTextField(controller: _controller),
        verticalSpace(100),
        SubmitButton(onPressed: () => _showFeedbackDialog(context)),
      ],
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => const FeedbackDialog(),
    );
  }
}
