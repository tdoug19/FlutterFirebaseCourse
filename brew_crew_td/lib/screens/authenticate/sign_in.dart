import 'package:brew_crew_td/services/auth.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: Text('Sign in Anon'),
          onPressed: () async {
            dynamic result = await _auth.signInAnon();
            if (result == null){
              print('error signing in');
            }
            else {
              print('signed in');
              print(result.uid);
            }
          }
        )
      ),
    );
  }
}