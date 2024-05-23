import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/routing/routes.dart';
import 'package:restaurant_delivery_app/features/auth/login/presentation/screen/login_screen.dart';
import 'package:restaurant_delivery_app/features/auth/welcome_screen/welcome_screen.dart';
import 'package:restaurant_delivery_app/features/layout/presentation/screen/layout_screen.dart';
import 'package:restaurant_delivery_app/features/reset_password/presentation/screen/reset_password.dart';

import '../../features/not_found_route/not_found_route.dart';
import '../../features/on_boarding/view/screen/on_boarding_screen.dart';
import '../../features/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());
      case Routes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case Routes.resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case Routes.layoutRoute:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundRoute());
    }
  }
}
