import 'package:flutter/material.dart';

import '../screens/loading/loading_screen.dart';

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
}