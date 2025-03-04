import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/widgets/bottom_nav_bar.dart';

class FeedbackDialog extends StatelessWidget {
  const FeedbackDialog();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      contentPadding: const EdgeInsets.all(20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/svgs/Check.svg', width: 100, height: 100),
          const SizedBox(height: 20),
          const Text(
            'Thank you for your feedback!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'We appreciated your feedback.\nWe’ll use your feedback to improve \nyour experience',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BottomNavBar()),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            ),
            child: const Text('Done',
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
