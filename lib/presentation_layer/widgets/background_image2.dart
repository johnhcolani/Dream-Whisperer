import 'package:flutter/material.dart';

class BackgroundImage2 extends StatelessWidget {
  const BackgroundImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blue.shade800,
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.3,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'images/p3.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
