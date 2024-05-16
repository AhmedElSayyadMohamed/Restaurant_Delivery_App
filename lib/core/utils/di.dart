import 'package:get_it/get_it.dart';
import '../../features/on_boarding/cubit/on_boarding_view_model.dart';

var sl = GetIt.instance;

class DependencyInjection {
  static get setUpDependencies {
    sl.registerLazySingleton(() => OnBoardingCubit());
  }
}
