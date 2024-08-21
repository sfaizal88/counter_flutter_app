import 'package:flutter/material.dart';
import 'dart:async';
import '../../routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override 
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, AppRoutes.homeScreenPath);
    });
  } 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Splash screen",
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/counter.png',
                    height: 130,
                    fit: BoxFit.cover,
                  ),
                  const Text(
                    'Counter', 
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ]
            )
        )
      )
    );
  }
}