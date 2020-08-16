/* Author : Nayan Verma */
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Util/AuthService.dart';

/*
  This is the Login Screen
  This screen will contain 3 Logins -> facebook,google, email/password

 */
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginWithEmail() {
    // TODO
  }

  LoginWithGoogle() {
    // TODO
    AuthSignIn().handleGoogleSignIn();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text('Our App'),
      ),
      appBar: AppBar(
        title: Text('This is an app'),
      ),
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            Container(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  icon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  prefixStyle: TextStyle(color: Colors.green),
                  hintStyle: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 20),
              width: 300,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(
                    FontAwesomeIcons.lock,
                    color: Colors.green,
                  ),
                  prefixStyle: TextStyle(color: Colors.green),
                  hintStyle: TextStyle(color: Colors.green),
                  hintText: 'Password',
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                LoginWithEmail();
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 70,
            ),
            
            Container(
                width: 300,
                child: RaisedButton.icon(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    onPressed: () {
                      LoginWithGoogle();
                    },
                    icon: Icon(FontAwesomeIcons.google),
                    label: Text('Sign in With Google'))),
          ]),
        ),
      ),
    );
  }
}
