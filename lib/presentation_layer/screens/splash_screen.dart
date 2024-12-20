import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'home_page.dart'; // Update with the actual home page import

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}




class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 1.0;
            const curve = Curves.easeInOut;

            final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final fadeAnimation = animation.drive(tween);

            return FadeTransition(
              opacity: fadeAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 1), // Adjust duration for the fade transition
        ),
      );
    });
  }
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.blue.shade800,
          ),
          Center(
            child: Opacity(
              opacity: 0.3,
              child: SizedBox(
                  height:double.infinity,
                  width: double.infinity,
                  child: Image.asset('images/p1.png',
                      fit: BoxFit.cover,
                  errorBuilder: (context, error,stackTrace)=>
                    const Center(child:Text('Image loading error')),
                  )),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style:  TextStyle(
                    color: Colors.grey.shade300,
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText("Dream\nInterpreter,"),
                      TyperAnimatedText("Let's talk about your dream"),
                    ],
                    onTap: () {

                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
