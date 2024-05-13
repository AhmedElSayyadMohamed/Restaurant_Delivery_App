import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/routing/routes.dart';
import '../../core/utils/image_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

     Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(ImageManager.splashBackground),
          Image.asset(ImageManager.appLogo),
        ],
      ),
    );
  }
}
