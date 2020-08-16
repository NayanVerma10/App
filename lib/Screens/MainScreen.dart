import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nayan Verma'),
            RaisedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text('Logout'),
            )
          ],
        ),
      ),
    );
  }
}
