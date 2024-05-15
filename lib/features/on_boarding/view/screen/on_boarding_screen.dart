// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di.dart';
import '../../cubit/on_boarding_view_model.dart';
import '../widget/on_boarding_action_button/action_button.dart';
import '../widget/page_indicator/page_indicator.dart';
import '../widget/page_viewer/page_viewer.dart';
import '../widget/skip_button/skip_button.dart';
import '../widget/text_page_viewer/text_page_viewer.dart';

class OnBoardingScreen extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);
  final PageController _textController = PageController(initialPage: 0);

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider<OnBoardingCubit>(
          create: (context) => sl<OnBoardingCubit>(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const OnBoardingSkipButton(),
              Expanded(
                flex: 3,
                child: OnBoardingPageViewer(
                  pageController: _pageController,
                  textController: _textController,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      OnBoardingIndicator(
                        pageController: _pageController,
                      ),
                      Expanded(
                        child: OnBoardingTextPageViewer(
                          textController: _textController,
                          pageController: _pageController,
                        ),
                      ),
                      OnBoardingActionButton(
                        pageController: _pageController,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
