import 'package:flutter/material.dart';

import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/indecator.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/scrolling_part.dart';



class ScrollingItemsAndIndicator extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.

  const ScrollingItemsAndIndicator({super.key});

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        ScrollingPart(),
        50.vs,
        PageIndecator(),
      ],
    );
  }
}
