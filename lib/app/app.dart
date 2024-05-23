import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_delivery_app/core/routing/route_generator.dart';
import 'package:restaurant_delivery_app/core/themes/light_mode/app_theme.dart';
import '../core/routing/routes.dart';
import '../core/utils/string_managers.dart';

class RestaurantDeliveryApp extends StatelessWidget {
  static const RestaurantDeliveryApp _singleton =
      RestaurantDeliveryApp._internal();
  const RestaurantDeliveryApp._internal();
  factory RestaurantDeliveryApp() => _singleton;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringManager.appName.tr(),
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: Theme.of(context)
          .getThemeMode(themeMode: Themes.light, context: context),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
    );
  }
}
