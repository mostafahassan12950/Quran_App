import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  Locale _locale = Locale('en'); // اللغة الافتراضية هي الإنجليزية

  Locale get locale => _locale;

  // دالة لتحميل اللغة من shared_preferences
  Future<void> loadLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language_code');
    if (languageCode != null) {
      _locale = Locale(languageCode);
    }
    notifyListeners();
  }

  // دالة لتغيير اللغة وحفظها في shared_preferences
  Future<void> switchLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (_locale.languageCode == 'en') {
      _locale = Locale('ar'); // تغيير إلى العربية
      prefs.setString('language_code', 'ar');
    } else {
      _locale = Locale('en'); // العودة إلى الإنجليزية
      prefs.setString('language_code', 'en');
    }
    notifyListeners();
  }
}
