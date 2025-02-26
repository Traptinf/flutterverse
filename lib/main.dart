import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/multi_language/screens/home_screen.dart';
import 'features/multi_language/translation/app_transllations.dart';

Future<void> backgroundHandler(RemoteMessage message) async {
  print("Background message received: ${message.notification?.title}");
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(backgroundHandler);
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
