import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecomm_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green.shade900,
      debugShowCheckedModeBanner: false,
      // home: AnimatedSplashScreen(splash: Splash(), nextScreen: OnBoardScreen()),
      home: Splash(),
    );
  }
}
