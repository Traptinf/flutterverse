import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedLanguage = 'English'; // Default selected language

  final List<Map<String, dynamic>> languages = [
    {'name': 'English', 'locale': Locale('en', 'US'), 'flag': '🇺🇸'},
    {'name': 'Hindi', 'locale': Locale('hi', 'IN'), 'flag': '🇮🇳'},
    {'name': 'French', 'locale': Locale('fr', 'FR'), 'flag': '🇫🇷'},
    {'name': 'Urdu', 'locale': Locale('ur', 'PK'), 'flag': '🇵🇰'},
  ];

  void changeLanguage(Map<String, dynamic> language) {
    setState(() {
      selectedLanguage = language['name'];
    });
    Get.updateLocale(language['locale']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('hello'.tr, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Language Dropdown
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.deepPurple, width: 1),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedLanguage,
                  isExpanded: true,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.deepPurple),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      changeLanguage(languages.firstWhere((lang) => lang['name'] == newValue));
                    }
                  },
                  items: languages.map((lang) {
                    return DropdownMenuItem<String>(
                      value: lang['name'],
                      child: Row(
                        children: [
                          Text(lang['flag'], style: TextStyle(fontSize: 18)), // Country Flag
                          SizedBox(width: 10),
                          Text(lang['name'], style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Heading
            Text(
              'headline'.tr,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.deepPurple),
            ),
            SizedBox(height: 10),

            // Subheading
            Text(
              'subheadline'.tr,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black87),
            ),
            SizedBox(height: 20),
            // Blog Content
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
              ),
              child: Text(
                'blog_content'.tr,
                style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.6),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
