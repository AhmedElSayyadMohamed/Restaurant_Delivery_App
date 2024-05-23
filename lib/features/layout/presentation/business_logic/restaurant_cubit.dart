import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_size/app_size.dart';
import 'restaurant_states.dart';

class RestaurantBloc extends Cubit<RestaurantStates> {
  static RestaurantBloc get(context) => BlocProvider.of(context);

  RestaurantBloc() : super(RestaurantInitialState());

  int navBarIndex = 2;

  double selectedIconSize(int index) =>
      index == navBarIndex ? AppSize.s30 : AppSize.s25;

  Color? selectedIconColor(int index,context) =>
      index == navBarIndex ? Theme.of(context).primaryColor : Colors.grey[400];


  void toggleNavBarIndex(int index) {
    
    navBarIndex = index;
    emit(ToggleNavBarIndexState());
  }
}
