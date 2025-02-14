import 'package:flutter/material.dart';

class CustomeRatingBar extends StatefulWidget {
  final double rate;
  final double itemSize;
  final Color itemColor;
  const CustomeRatingBar(
      {super.key,
      required this.rate,
      required this.itemSize,
      required this.itemColor});

  @override
  State<CustomeRatingBar> createState() => _CustomeRatingBarState();
}

class _CustomeRatingBarState extends State<CustomeRatingBar> {
  bool rated = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 0,
      
      children: [
        ...List.generate(
          5,
          (index) {
            return  GestureDetector(
              onTap: () {
                
              },
              child: Icon(
                    Icons.star,
                    color: widget.itemColor,
                    size: widget.itemSize,
                  ),
            );
          },
        )
      ],
    );
  }
}
