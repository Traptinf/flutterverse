import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutterverse/learn_getx/fifth_screen.dart';
import 'package:flutterverse/learn_getx/fourth_screen.dart';
import 'package:get/get.dart';

import 'features/multi_language/translation/app_transllations.dart';
import 'learn_getx/first_screen.dart';
import 'learn_getx/obx_example.dart';
import 'learn_getx/second.dart';
import 'learn_getx/third.dart';
import 'learn_getx/unknown.dart';

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
      // initialRoute: "first",
      defaultTransition: Transition.leftToRight,
      getPages: [
        GetPage(name: "/first", page: ()=>FirstScreen()),
        GetPage(name: "/second", page: ()=>SecondPage()),
        GetPage(name: "/third", page: ()=>ThirdPage()),
        GetPage(name: "/four", page: ()=>FourthScreen()),
        GetPage(name: "/five", page: ()=>FifthScreen())
      ],
      unknownRoute: GetPage(name: "/unknown", page: ()=>UnKnownPage()),
      debugShowCheckedModeBanner: false,
      title: 'Flutter GetX i18n',
      translations: AppTranslations(), // Add translations
      locale: Locale('en', 'US'), // Default language
      fallbackLocale: Locale('en', 'US'), // Fallback if locale is missing
      home: ObxExample(),
    );
  }
}
