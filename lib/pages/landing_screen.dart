import 'package:flutter/material.dart';

enum LandingMode { SIGN_IN, SIGN_UP }

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  LandingMode _mode = LandingMode.SIGN_UP;

  _buildSignUp() {
    return [
      RaisedButton.icon(
        color: Colors.white,
        icon: Icon(
          Icons.email,
        ),
        label: Text('Sign up with email'),
        onPressed: () {
          Navigator.pushNamed(context, '/sign_up');
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Already have an account'),
          FlatButton(
              onPressed: () {
                setState(() {
                  _mode = LandingMode.SIGN_IN;
                });
              },
              child: Text('Sign in.'))
        ],
      )
    ];
  }

  _buildSignIn() {
    return [
      RaisedButton.icon(
        color: Colors.white,
        icon: Icon(
          Icons.email,
        ),
        label: Text('Sign in with email'),
        onPressed: () {
          Navigator.pushNamed(context, '/sign_in');
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Don\'t have an account?'),
          FlatButton(
              onPressed: () {
                setState(() {
                  _mode = LandingMode.SIGN_UP;
                });
              },
              child: Text('Sign up.'))
        ],
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Realworld',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          )
        ]..addAll(
            _mode == LandingMode.SIGN_IN ? _buildSignIn() : _buildSignUp()),
      ),
    );
  }
}
