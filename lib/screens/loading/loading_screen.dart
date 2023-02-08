import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_developer_student_clubs/screens/home/home_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rive/rive.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Container(
        child: Center(
          child: SizedBox(
              child: RiveAnimation.asset('assets/RiveAssets/gdsc_uni_logo.riv')
          ),
        ),
      ),
      nextScreen: HomeScreen(),
    );
  }

}


