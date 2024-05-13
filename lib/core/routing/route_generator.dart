import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/routing/routes.dart';

import '../../features/not_found_route/not_found_route.dart';
import '../../features/onBoarding/on_boarding_Screen.dart';
import '../../features/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) =>  OnBoardingScreen());
      
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundRoute());
    }
  }
}
