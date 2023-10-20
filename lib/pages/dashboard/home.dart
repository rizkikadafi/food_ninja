import 'package:flutter/material.dart';
import 'package:food_ninja/theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Center(
        child: Text(
          "Welcome to HomeScreen",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: darkPrimaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
