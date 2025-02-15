import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class BluredButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final void Function() onPressed;

  const BluredButton(
      {super.key,
      required this.height,
      required this.width,
      required this.onPressed,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color:
                const Color.fromARGB(255, 139, 137, 137).withValues(alpha: .92),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white),
          ),
          child: TextButton(
              onPressed: onPressed,
              child: Text(
                title,
                style: AppTextStyles.font16Bold.copyWith(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
