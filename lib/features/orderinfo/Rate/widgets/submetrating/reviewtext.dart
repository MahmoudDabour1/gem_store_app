import 'package:flutter/material.dart';

class ReviewTextField extends StatelessWidget {
  final TextEditingController controller;

  const ReviewTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText:
                      'Would you like to write anything about this product?',
                  border: InputBorder.none,
                ),
                maxLines: null,
              ),
            ),
            const Positioned(
              bottom: 8,
              right: 8,
              child: Text(
                '50 characters',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
