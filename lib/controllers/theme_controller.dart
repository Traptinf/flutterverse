import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  RxString selectedTheme = "Light".obs;

  final Map<String, ThemeData> themes = {
    "Light": ThemeData.light(),
    "Dark": ThemeData.dark(),
    "Blue": ThemeData(primarySwatch: Colors.blue),
    "Green": ThemeData(primarySwatch: Colors.green),
    "Purple": ThemeData(primarySwatch: Colors.purple),
  };

  @override
  void onInit() {
    super.onInit();
    loadTheme();
  }

  void setTheme(String themeName) async {
    selectedTheme.value = themeName;
    themeMode.value = (themeName == "Dark") ? ThemeMode.dark : ThemeMode.light;
    update();
    saveTheme(themeName);
  }

  void saveTheme(String themeName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("selectedTheme", themeName);
  }

  void loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    String themeName = prefs.getString("selectedTheme") ?? "Light";
    selectedTheme.value = themeName;
    themeMode.value = (themeName == "Dark") ? ThemeMode.dark : ThemeMode.light;
  }
}
