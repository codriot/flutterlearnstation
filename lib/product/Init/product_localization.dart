import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterlearnstation/product/constant/enum/locale_enum.dart';

@immutable
final class ProductLocalization extends EasyLocalization {
  ProductLocalization({
    super.key,
    required child,
  }) : super(
          child: child,
          supportedLocales: _supportedLocales,
          path: _translationPath,
          useOnlyLangCode: true,
        );
  static final List<Locale> _supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
    Locales.ar.locale,
    Locales.de.locale,
  ];
  static const _translationPath = 'assets/translations';

  // static const supportedLocales = [
  //   Locale('en', 'US'),
  //   Locale('tr', 'TR'),
  //   Locale('ar', 'SA'),
  //   Locale('de', 'DE'),
  // ];

  // static const path = 'assets/translations';

  // static const fallbackLocale = Locale('en', 'US');

  // static const saveLocale = true;

  // static const startLocaleLanguageCode = 'en';

  // static const startLocaleCountryCode = 'US';

  // static const startLocaleScriptCode = '';

  // static const startLocaleLanguageCodeOnly = 'en';

  // static const startLocaleCountryCodeOnly = 'US';

  // static const startLocaleScriptCodeOnly = '';

  // static const startLocaleLanguageCodeAndCountryCode = 'en_US';

  // static const startLocaleLanguageCodeAndScriptCode = 'en_';

  // static const startLocaleCountryCodeAndScriptCode = '_US';

  // static const startLocaleLanguageCodeAndCountryCodeAndScriptCode = 'en_US_';

  // static const startLocaleLanguageCodeOnlyLanguage = 'en';

  // static const startLocaleCountryCodeOnlyCountry = 'US';

  // static const startLocaleScriptCodeOnlyScript = '';

  // static const startLocaleLanguageCodeAndCountryCodeLanguage = 'en';

  // static const startLocaleLanguageCodeAndCountryCodeCountry = 'US';

  // static const startLocaleLanguageCodeAndScriptCodeLanguage = 'en';

  // static const startLocaleLanguageCodeAndScriptCodeScript = '';

  // static const startLocaleCountryCodeAndScriptCodeCountry = 'US';

  // static const startLocaleCountryCodeAndScriptCodeScript = '';

  // static const startLocaleLanguageCodeAndCountryCodeAndScriptCodeLanguage = 'en';

  // static const startLocaleLanguageCodeAndCountryCodeAndScriptCodeCountry = 'US';

  // static const startLocaleLanguageCodeAndCountryCodeAndScriptCodeScript = '';

  // static const startLocaleLanguageCodeOnlyLanguageTr = 'tr';

  // static const startLocaleCountryCodeOnlyCountryTR = 'TR';

  // static const startLocaleScriptCodeOnlyScriptTr = '';

  // static const startLocaleLanguageCodeAndCountryCodeLanguageTr = 'tr';

  // static const startLocaleLanguageCodeAndCountryCodeCountryTr = 'TR';

  // static const startLocaleLanguageCodeAndScriptCodeLanguageTr = 'tr';

  // static const startLocaleLanguageCodeAndScriptCodeScriptTr = '';

  // static const startLocaleCountryCodeAnd
}
