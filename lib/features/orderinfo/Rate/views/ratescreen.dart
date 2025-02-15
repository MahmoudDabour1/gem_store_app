import 'package:flutter/material.dart';
import 'package:gem_store_app/core/widgets/app_custom_app_bar.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/ratiereview.dart';

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
