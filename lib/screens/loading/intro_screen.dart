
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IntroScreen extends StatelessWidget {
  static Widget create (BuildContext context) => IntroScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text('Welcome')
      ),
      body: Text('Intro Screen Test'),
    );
  }
}

class _IntroPager extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    );


  }
}
