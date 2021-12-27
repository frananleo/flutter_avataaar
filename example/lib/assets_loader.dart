import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class AssetsLoader {
  static String getLocalePath(String basePath, Locale locale) {
    return '$basePath/${locale.toString().split('_').join("-")}.json';
  }

  Future<Map<String, dynamic>> load(
      {String? path,
      Locale? locale,
      Map<String, dynamic>? customeTranslations}) async {
    if (customeTranslations != null) {
      return customeTranslations;
    }
    var localePath = getLocalePath(
        path ?? 'packages/flutter_avataaar/lib/assets/translations',
        locale ?? Locale('en'));
    var localeMap = await json.decode(await rootBundle.loadString(localePath))
        as Map<String, dynamic>;
    return localeMap;
  }
}
