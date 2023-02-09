
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rive/rive.dart';

class IntroScreen extends StatelessWidget {
  static Widget create (BuildContext context) => IntroScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _IntroPager(),
    );
  }
}

class _IntroPager extends HookWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(
            top: -100,
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: RiveAnimation.asset('assets/RiveAssets/developer.riv')
              ),
          ),
          AnimatedPositioned(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 240),
            child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Text('I\'m new here'),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('I\'ve an account')
                    ),

                    SizedBox(height: 150,),
                  ],
                ),
            ),
          )
        ],
      ),
    );
    
  }
}
