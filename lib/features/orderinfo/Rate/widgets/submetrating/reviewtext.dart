import '../../../../../core/helpers/public_imports.dart';

class ReviewTextField extends StatelessWidget {
  final TextEditingController controller;

  const ReviewTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Card(
        elevation: 5,
        margin: 10.allEdgeInsets,
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: 8.allEdgeInsets,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText:
                      'Would you like to write anything about this product?',
                  border: InputBorder.none,
                ),
                maxLines: null,
              ),
            ),
             Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                '50 characters',
                style: AppTextStyles.font12regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
