import 'package:flutter/material.dart';

import '../../../cubit/on_boarding_view_model.dart';

class OnBoardingPageViewer extends StatelessWidget {
  final PageController pageController;
  final PageController textController;

  const OnBoardingPageViewer({
    super.key,
    required this.pageController,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    return PageView.builder(
      controller: pageController,
      itemBuilder: (context, index) => Image.asset(cubit.getPages[index].image),
      onPageChanged: (page) {
        cubit.changePage(page);
        textController.animateToPage(
          page,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      },
      itemCount: cubit.getPages.length,
    );
  }
}
