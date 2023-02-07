import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_developer_student_clubs/screens/home/home_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new HomeScreen(),
      useLoader: false,
    );
  }
}
