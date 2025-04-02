import 'package:gem_store_app/core/helpers/public_imports.dart';


class CustomeItem extends StatelessWidget {
  const CustomeItem({
    super.key,
    required this.page,
    required this.index,
  });

  final int page;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: page != index ? 25.allEdgeInsets : 10.allEdgeInsets,
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          color: Color(0xFFE7E8E9),
          borderRadius: BorderRadius.all(Radius.circular(7.r))),
      child: Image.asset(
        AppAssets.imagesOboardeingItems[index],
        fit: BoxFit.contain,
      ),
    );
  }
}
