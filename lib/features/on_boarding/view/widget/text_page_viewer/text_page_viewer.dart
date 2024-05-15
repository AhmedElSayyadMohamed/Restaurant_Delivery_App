
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/on_boarding_states.dart';
import '../../../cubit/on_boarding_view_model.dart';
import '../page_view_item.dart';

class OnBoardingTextPageViewer extends StatelessWidget {
  final PageController textController;
  final PageController pageController;

  const OnBoardingTextPageViewer({
    super.key,
    required this.textController,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return PageView.builder(
          controller: textController,
          itemBuilder: (context, index) => DescriptionPageViewItem(
            title: cubit.getPages[index].title,
            body: cubit.getPages[index].body,
          ),
          onPageChanged: (page) {
            pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            );
          },
          itemCount: cubit.getPages.length,
        );
      },
    );
  }
}
