import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/translation/localization.dart';
import 'app/app.dart';
import 'core/utils/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.setUpDependencies;
  await EasyLocalization.ensureInitialized();
  String locale = 'en';
  runApp(
    EasyLocalization(
      supportedLocales: Localization().getSupportedLanguages,
      path: Localization().getTranslationPath,
      fallbackLocale: Localization().getCurrentLanguage(locale),
      child: RestaurantDeliveryApp(),
    ),
  );
}
