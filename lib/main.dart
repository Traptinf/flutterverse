import 'package:flutter/material.dart';
import 'package:flutterverse/translation/app_transllations.dart';
import 'package:flutterverse/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}
///trapti jadon
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX i18n',
      translations: AppTranslations(), // Add translations
      locale: Locale('en', 'US'), // Default language
      fallbackLocale: Locale('en', 'US'), // Fallback if locale is missing
      home: HomeScreen(),
    );
  }
}
