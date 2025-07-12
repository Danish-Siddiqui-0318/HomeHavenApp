import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecomm_app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // <-- Import ScreenUtil

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // You can change this to your original design size
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          color: Colors.green.shade900,
          debugShowCheckedModeBanner: false,
          home: const Splash(), // or use AnimatedSplashScreen if needed
        );
      },
    );
  }
}
