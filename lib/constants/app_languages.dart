// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppLanguages {
  const AppLanguages._();
  static const LANG_PATH = 'assets/translations';

  static const supportedLanguages = [
    TR_LOCALE,
    EN_LOCALE,
    RU_LOCALE
  ];

  static const TR_LOCALE = Locale('en', 'US');
  static const EN_LOCALE = Locale('tr', 'TR');
  static const RU_LOCALE = Locale('ru', 'RU');
}