import 'package:flutter/material.dart';

/// Project locale enum for operation and configuration
enum Locales {
  /// Turkish locale
  tr(Locale('tr', 'TR')),

  /// English locale
  en(Locale('en', 'US')),

  //  Arabic locale
  ar(Locale('ar', 'SA')),
  //  German locale
   de(Locale('de', 'DE'));

  

  /// Locale value
  final Locale locale;

  const Locales(this.locale);
}
