import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_delivery_app/features/on_boarding/cubit/on_boarding_states.dart';
import '../constants.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  OnBoardingCubit() : super(OnBoardingInitialState());
  static OnBoardingCubit get(context) => BlocProvider.of(context); // get

//////////////////////////////
  int currentPage = 0;

  changePage(int index) {
    currentPage = index;
    emit(ChangePageIndexState());
  }

  get getPages => onBoardingPages;
}
