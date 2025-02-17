import 'package:flutter/material.dart';
import '../../../../core/widgets/app_custom_app_bar.dart';
import '../widgets/ratiereview.dart';

class Ratescreen extends StatefulWidget {
  const Ratescreen({super.key});

  @override
  State<Ratescreen> createState() => _RatescreenState();
}

class _RatescreenState extends State<Ratescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppCustomAppBar(title: "Order"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Ratiereview(),
          ],
        ),
      ),
    );
  }
}
