import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_ninja/theme.dart';
import 'package:food_ninja/pages/dashboard/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomeScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: -650,
              left: -150,
              child: SvgPicture.asset('assets/img/Pattern.svg')),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: const [
                    0.5,
                    0.9
                  ],
                  colors: [
                    darkBackgroundColor,
                    darkBackgroundColor.withAlpha(100),
                  ]),
            ),
            alignment: Alignment.center,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/img/Logo.svg'),
                  Text(
                    "FoodNinja",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: foreGroundColor2,
                      fontFamily: 'Viga',
                      fontWeight: FontWeight.normal,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    "Deliver Favorite Food",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: darkPrimaryTextColor,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: SpinKitFadingCircle(
                      color: Colors.white,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
