import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:google_developer_student_clubs/screens/loading/sign_in.dart';
import 'package:google_developer_student_clubs/screens/loading/sign_up.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  static Widget create (BuildContext context) => IntroScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _IntroPager(),
    );
  }
}

class _IntroPager extends HookWidget {

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFF5CB979),
    foregroundColor: Colors.grey[300],
    elevation: 0,
    minimumSize: const Size(290, 45),
    padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(9)),
    ),
  );


  @override
  Widget build(BuildContext context) {

    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Welcome to ', style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 14,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: Image(image: AssetImage('assets/Images/logo.png'),),
          ),
          SizedBox(height: 60,),
          SizedBox(
            child: Lottie.asset(
              'assets/LottieAssets/intro_screen_v2.json',
              height: 350,
              repeat: true,
            ),
          ),

          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: raisedButtonStyle,
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage())
                );
              },
              child: Text('I\'m new here', style: TextStyle(
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.grey.shade100,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: raisedButtonStyle,
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage())
                  );
                },
                child: Text('I\'ve an account', style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.grey.shade100,
                  ),
                )
            ),
          ),
        ],
      ),
    );
    
  }
}



