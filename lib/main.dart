import 'package:flutter/material.dart';
import 'package:MyWonderFullApp/Screens/Login.dart';


//  This is the Main Function
void main() {
  runApp(MyApp());
}

//  This is the Widget that is Called First
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primaryColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.purpleAccent,
          opacity: 0.5,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple,
          textTheme: ButtonTextTheme.primary, 

        ),
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}