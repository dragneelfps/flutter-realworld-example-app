import 'package:flutter/material.dart';
import 'package:realworld/pages/landing_screen.dart';
import 'package:realworld/pages/sign_in_screen.dart';
import 'package:realworld/pages/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realworld',
      initialRoute: '/',
      routes: {
        '/': (context) => LandingScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/sign_in': (context) => SignInScreen(),
      },
    );
  }
}
