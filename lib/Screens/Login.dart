/* Author : Nayan Verma */
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*
  This is the Login Screen
  This screen will contain 3 Logins -> facebook,google, email/password

 */
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  LoginWithEmail(){

  }

  LoginWithGoogle(){
    
  }
  LoginWithFacebook(){
      
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: Text('Our App'),),
      appBar: AppBar(
        title: Text('This is our Our'),
        
      ),
      body: Container(
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    icon: Icon(Icons.email,color: Colors.purple,),
                    prefixStyle: TextStyle(color:Colors.purple),
                    hintStyle: TextStyle(color:Colors.purple),
                  ),

                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom:20),
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon(FontAwesomeIcons.lock,color: Colors.purple,),
                    prefixStyle: TextStyle(color:Colors.purple),
                    hintStyle: TextStyle(color:Colors.purple),

                    hintText: 'Password',
                  ),

                ),
              ),
              RaisedButton(onPressed: (){LoginWithEmail();},child: Text('Login'),),
              SizedBox(height: 100,),
              Container(width: 300,child: RaisedButton.icon(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),onPressed: (){LoginWithGoogle();}, icon: Icon(FontAwesomeIcons.google), label: Text('Sign in With Google'))),
              Container(width: 300,child: RaisedButton.icon(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),onPressed: (){LoginWithFacebook();}, icon: Icon(FontAwesomeIcons.facebook), label: Text('Sign in With Facebook'))),
              
            ]
          ),
        ),
      ),
      
    );
  }
}