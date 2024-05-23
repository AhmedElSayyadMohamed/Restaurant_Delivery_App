import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/custom_widgets/custom_broken_icons/icon_broken.dart';
import '../../../../core/utils/app_size/app_size.dart';
import '../business_logic/restaurant_cubit.dart';
import '../business_logic/restaurant_states.dart';

class CustomFloatinActionButton extends StatelessWidget {
  const CustomFloatinActionButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantStates>(
      builder: (context, state) {
        var cubit = RestaurantBloc.get(context);
        return SizedBox(
          width: AppSize.s65,
          height: AppSize.s65,
          child: FloatingActionButton(
            backgroundColor: cubit.selectedIconColor(2, context),
            onPressed: () => cubit.toggleNavBarIndex(2),
            child: const Icon(IconBroken.home),
          ),
        );
      },
    );
  }
}
