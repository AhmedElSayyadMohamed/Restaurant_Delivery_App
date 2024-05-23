import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/restaurant_cubit.dart';
import '../../business_logic/restaurant_states.dart';

class CustomNavBarButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final int index;
  const CustomNavBarButton({
    super.key,
    required this.label,
    required this.index,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestaurantBloc, RestaurantStates>(
      builder: (context, state) {
        var cubit = RestaurantBloc.get(context);
        return GestureDetector(
          onTap: () => cubit.toggleNavBarIndex(index),
          onLongPress: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: cubit.selectedIconColor(index, context),
                size: cubit.selectedIconSize(index),
              ),
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 12),
              )
            ],
          ),
        );
      },
    );
  }
}
