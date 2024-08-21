import 'package:flutter/material.dart';
import '../screen/home/home_splash.dart';
import '../screen/splash/splash_screen.dart';

class AppRoutes {
  static const String splashScreenPath = "/splashPath";
  static const String homeScreenPath = "/screenPath";

  static final Map<String, WidgetBuilder> routes = {
    splashScreenPath: (context) => SplashScreen(),
    homeScreenPath: (context) => HomeScreen()
  };
}