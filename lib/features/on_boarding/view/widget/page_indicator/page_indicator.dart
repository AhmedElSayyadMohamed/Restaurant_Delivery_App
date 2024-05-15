
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../cubit/on_boarding_states.dart';
import '../../../cubit/on_boarding_view_model.dart';

class OnBoardingIndicator extends StatelessWidget {
  final PageController pageController;

  const OnBoardingIndicator({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return SmoothPageIndicator(
          controller: pageController,
          effect: WormEffect(
            activeDotColor: Theme.of(context).primaryColor,
            dotColor: Colors.grey,
            dotWidth: 10,
            dotHeight: 10,
          ),
          count: cubit.getPages.length,
        );
      },
    );
  }
}
