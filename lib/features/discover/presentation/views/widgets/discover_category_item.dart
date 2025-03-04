import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/discovery_container.dart';
import 'List_of_category.dart';

class DiscoverCategoryItem extends StatefulWidget {
  const DiscoverCategoryItem({
    super.key,
    required this.title,
    required this.image,
    required this.colorForContainer,
    required this.color,
  });

  final String title;
  final String image;
  final Color colorForContainer;
  final Color color;

  @override
  _DiscoverCategoryItemState createState() => _DiscoverCategoryItemState();
}

class _DiscoverCategoryItemState extends State<DiscoverCategoryItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: DiscoveryContainer(
            title: widget.title,
            image: widget.image,
            colorForContainer: widget.colorForContainer,
            color: widget.color,
          ),
        ),
        if (isExpanded)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: ListOfCategory(),
          )
      ],
    );
  }
}
