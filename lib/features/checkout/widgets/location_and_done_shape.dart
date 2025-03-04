import 'package:gem_store_app/core/helpers/public_imports.dart';
import '../../../core/widgets/svg_displayer.dart';
import 'dotted_line_painter.dart';

class LocationAndDoneShape extends StatelessWidget {
  final String? changeDoneImage;

  const LocationAndDoneShape({super.key, this.changeDoneImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        children: [
          SvgDisplayer(assetName: AppAssets.locationBlack),
          20.hs,
          Expanded(
            child: CustomPaint(
              painter: DottedLinePainter(),
              child: 70.vs,
            ),
          ),
          66.hs,
          Expanded(
            child: CustomPaint(
              painter: DottedLinePainter(),
              child: 70.vs
            ),
          ),
          20.hs,
          SvgDisplayer(assetName: changeDoneImage ?? AppAssets.doneGray),
        ],
      ),
    );
  }
}
