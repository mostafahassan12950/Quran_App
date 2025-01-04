
import 'package:BeautyBooking/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'Provider/add_to_cart_provider.dart';
import 'Provider/favorite_provider.dart';
import 'generated/l10n.dart';
import 'models/langauch.dart'; // تأكد من أنك قد قمت بإعداد هذا الملف مع الترجمات المناسبة

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // for add to cart 
        ChangeNotifierProvider(create: (_) => CartProvider()),

        // for favorite 
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),

        // for changing language (LocaleProvider)
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            
            locale: Provider.of<LanguageProvider>(context).locale,  // استخدام LocaleProvider لتحديد اللغة
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            home: const BottomNavBar(),  // الصفحة الرئيسية
          );
        },
      ),
    );
  }
}