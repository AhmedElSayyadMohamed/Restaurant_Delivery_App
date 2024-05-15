import '../../core/utils/image_manager.dart';
import '../../core/utils/string_managers.dart';
import 'model/on_boarding_model.dart';

List<OnBoardingModel> onBoardingPages = [
  OnBoardingModel(
    image: ImageManager.onboardingImagePage1,
    title: StringManager.onboardingTitlePage1,
    body: StringManager.onboardingBodyPage1,
  ),
  OnBoardingModel(
    image: ImageManager.onboardingImagePage2,
    title: StringManager.onboardingTitlePage2,
    body: StringManager.onboardingBodyPage2,
  ),
  OnBoardingModel(
    image: ImageManager.onboardingImagePage3,
    title: StringManager.onboardingTitlePage3,
    body: StringManager.onboardingBodyPage3,
  ),
];
