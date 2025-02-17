
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgDisplayer extends StatelessWidget {
  final String assetName;
  final double? height;
  final double? width;
  final Color? svgIconColor;
  final BoxFit? fit;
  const SvgDisplayer(
      {super.key,
      required this.assetName,
      this.height,
      this.width,
      this.svgIconColor,
      this.fit});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      // ignore: deprecated_member_use
      color: svgIconColor,
      height: height,
      width: width,
      assetName,
      fit: fit ?? BoxFit.contain,
    );
  }
}

