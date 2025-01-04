import 'dart:async'; // Import to use Timer
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../constan/constans.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  // متغير لتحريك الصورة
  double _position = 0.0; // تبدأ الصورة من اليسار
  Locale _locale = Locale('en'); // تحديد اللغة الافتراضية كإنجليزية

  late Timer _timer;

  @override
  void initState() {
    super.initState();

    // تعيين التايمر لتحريك الصورة كل 5 ثوانٍ
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        // إذا كانت الصورة في الموضع الأول (اليسار)
        if (_position == 0.0) {
          _position = 0.5; // الانتقال إلى المنتصف
        } else {
          _position = 0.0; // العودة إلى الموضع الأول (اليسار)
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // تأكد من إيقاف التايمر عند التخلص من الـ widget
    super.dispose();
  }

  // تغيير اللغة عند اختيار اللغة من القائمة
  void _changeLanguage(Locale locale) {
    setState(() {
      _locale = locale; // تغيير اللغة
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          backgroundColor: mobileBackgroundColor,
          actions: [
            PopupMenuButton<Locale>(
              onSelected: _changeLanguage,
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: Locale('en'),
                  child: Text("English"),
                ),
                PopupMenuItem(
                  value: Locale('ar'),
                  child: Text("العربية"),
                ),
              ],
              icon: const Icon(
                Icons.language,
                color: kprimaryColor,
                size: 30,
              ),
            ),
            // أيقونة الإشعارات
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: kprimaryColor,
                size: 30,
              ),
            ),
            // أيقونة تغيير اللغة
          ],
        ),
        // الصورة التي تتحرك من اليسار إلى المنتصف ثم تعود
        AnimatedPositioned(
          duration: const Duration(seconds: 1),
          top: 15, // الحفاظ على الارتفاع ثابت
          left: _position == 0.0
              ? 20 // إذا كانت الصورة في اليسار
              : MediaQuery.of(context).size.width / 2 -
                  50, // إذا كانت في المنتصف
          child: Image.asset(
            "images/logo.webp", // تأكد من إضافة الصورة في مجلد الأصول
            height: 100,
            width: 100,
          ),
        ),
      ],
    );
  }
}
