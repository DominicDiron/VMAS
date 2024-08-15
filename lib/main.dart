import 'package:flutter/material.dart';
import 'package:vmas/config/routes.dart';
import 'package:vmas/l10n/l10n.dart';
import 'package:vmas/screens/splash_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const SplashScreen(),
      routes: Routes(),
      supportedLocales: L10n.all,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        locale: const Locale('en'),
    );
  }
}
