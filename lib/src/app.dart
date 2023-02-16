import 'package:flutter/material.dart';
import 'package:google_developer_student_clubs/screens/loading/intro_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GDSC UNI',
      home: IntroScreen(),
    );
  }
}