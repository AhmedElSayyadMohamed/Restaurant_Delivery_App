import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/extension/responsive_context.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: context.heightPercent(0.55),
            color: const Color.fromARGB(244, 255, 81, 0),
          ),
          SmoothPageIndicator(
            controller: _pageController,
        
            count: 3,
          ),
          SizedBox(
            height: context.screenHeight * 0.09,
          ),
          Text(
            'Find Food You Love',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Discover the best foods from over 1.000 restaurants and fast delivery to your door step',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
