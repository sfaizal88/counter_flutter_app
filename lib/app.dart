import 'package:flutter/material.dart';
import './routes/app_routes.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      // theme
      initialRoute: AppRoutes.splashScreenPath,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}