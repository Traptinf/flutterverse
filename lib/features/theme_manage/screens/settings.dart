// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controllers/theme_controller.dart';
//
// class SettingsScreen extends StatelessWidget {
//   final ThemeController themeController = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Settings')),
//       body: Center(
//         child: Obx(() => SwitchListTile(
//           title: Text("Dark Mode"),
//           value: themeController.isDarkMode.value,
//           onChanged: (value) => themeController.toggleTheme(),
//         )),
//       ),
//     );
//   }
// }
