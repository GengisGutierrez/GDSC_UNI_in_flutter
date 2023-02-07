import 'package:flutter/material.dart';
import 'package:google_developer_student_clubs/screens/loading/loading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GDSC UNI',
      home: const SplashScreenPage(),
    );
  }
  
  static const defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
    borderSide: BorderSide(
      color: Color(0xFFDEE3F2),
      width: 1,
    ),
  );

}