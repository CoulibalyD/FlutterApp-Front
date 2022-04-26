import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/component/map_component/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/loader.json'),
      backgroundColor: Colors.white,
      nextScreen: const MapScreen(),
      splashIconSize: 250,
      duration: 1900,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.topToBottom,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
