import 'package:flutter/material.dart';
import 'package:food_ninja/pages/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Inter'),
      title: "Food Ninja",
      home: const SplashScreen(),
    );
  }
}
