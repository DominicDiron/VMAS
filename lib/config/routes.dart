import 'package:flutter/material.dart';
import 'package:vmas/screens/get_started.dart';
import 'package:vmas/screens/splash_screen.dart';
// Import your screens

Map<String, WidgetBuilder> Routes() {
    return {
      // '/': (context) => const SplashScreen(),
      '/getStarted': (context) => const GetStarted(),
      
    };
  
}
