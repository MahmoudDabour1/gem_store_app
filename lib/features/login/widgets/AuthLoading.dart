import 'package:flutter/material.dart';

class AuthLoadingOverlay extends StatelessWidget {
  const AuthLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Column(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Container(
                height: 100,
                width: 200,
                decoration: ShapeDecoration(
                  color: const Color.fromARGB(255, 104, 104, 104),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                        Color.fromARGB(255, 255, 255, 255),
                      ),
                      strokeWidth: 4.5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Signing you in...",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
