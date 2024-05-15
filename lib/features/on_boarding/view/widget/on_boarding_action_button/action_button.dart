
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/string_managers.dart';
import '../../../cubit/on_boarding_states.dart';
import '../../../cubit/on_boarding_view_model.dart';

class OnBoardingActionButton extends StatelessWidget {
  final PageController pageController;

  const OnBoardingActionButton({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return ElevatedButton(
          onPressed: () => _onTapNextOrGetStarted(context),
          child: Text(
            cubit.currentPage == 2
                ? context.tr(StringManager.getStarted)
                : context.tr(StringManager.next),
          ),
        );
      },
    );
  }

  void _onTapNextOrGetStarted(BuildContext context) {
    var cubit = OnBoardingCubit.get(context);
    if (cubit.currentPage < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacementNamed(context, Routes.welcomeRoute);
    }
  }
}
