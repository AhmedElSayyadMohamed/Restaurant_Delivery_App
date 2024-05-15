import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum Languages { english, arabic }

class Localization {
  static Localization instance = Localization._internal();
  Localization._internal();
  factory Localization() => instance;

  final String _translationPath = 'assets/translations';

  final List<Locale> _supportedLanguages = const [
    Locale('en'),
    Locale('ar'),
  ];

  get getTranslationPath => _translationPath;
  get getSupportedLanguages => _supportedLanguages;

  getCurrentLanguage(String currentLange) => Locale(currentLange);

  setLanguage({required BuildContext context, required Languages language}) {
    switch (language) {
      case Languages.english:
        {
          context.setLocale(const Locale('en'));
        }
      case Languages.arabic:
        {
          context.setLocale(const Locale('ar'));
        }

      default:
        {
          context.setLocale(const Locale('en'));
        }
    }
  }
}
