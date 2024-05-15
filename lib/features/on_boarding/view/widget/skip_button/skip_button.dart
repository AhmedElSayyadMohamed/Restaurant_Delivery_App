import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/custom_widgets/custom_text_button/custom_text_button.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/string_managers.dart';
import '../../../cubit/on_boarding_states.dart';
import '../../../cubit/on_boarding_view_model.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit, OnBoardingStates>(
      builder: (context, state) {
        var cubit = OnBoardingCubit.get(context);

        return Visibility(
          visible: cubit.currentPage != 2,
          replacement: const SizedBox(
            height: 50,
          ),
          child: CustomTextButton(
            label: StringManager.skip.tr(),
            onPressed: () => _onTapSkip(context),
          ),
        );
      },
    );
  }

  void _onTapSkip(BuildContext context) {
    Navigator.pushReplacementNamed(context, Routes.welcomeRoute);
  }
}
