import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vital_swap/screens/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      _openOnboadPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }

  _openOnboadPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OnboardScreen(),
      ),
    );
  }
}
