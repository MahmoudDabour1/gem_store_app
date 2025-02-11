import 'package:flutter/cupertino.dart';
import 'package:gem_store_app/core/theming/app_styles.dart';

import 'app_back_button.dart';

class AppCustomHeader extends StatelessWidget {
  final String titleText;

  const AppCustomHeader({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBackButton(),
        Center(
            child: Text(
          titleText,
          style: AppStyles.font18BlackSemiBold,
        )),
      ],
    );
  }
}
