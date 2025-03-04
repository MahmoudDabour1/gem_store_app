import '../../../core/helpers/public_imports.dart';

class CartPriceItem extends StatelessWidget {
  final String firstText;
  final String lastText;
  final TextStyle? firstTextStyle;
  final TextStyle? lastTextStyle;

  const CartPriceItem({
    super.key,
    required this.firstText,
    required this.lastText,
    this.firstTextStyle,
    this.lastTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: 20.pv,
          child: Text(
            firstText,
            style: firstTextStyle ?? AppTextStyles.font14DarkGrayMedium,
          ),
        ),
        Text(
          "\$$lastText",
          style: lastTextStyle ??
              AppTextStyles.font14DarkGrayMedium.copyWith(
                color: AppColors.blackColor,
              ),
        ),
      ],
    );
  }
}
