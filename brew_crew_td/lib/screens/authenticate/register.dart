import 'package:brew_crew_td/services/auth.dart';
import 'package:flutter/material.dart';


class Register extends StatefulWidget {
  //const Register({Key? key}) : super(key: key);
  final Function toggleView;

  //Constructor
  Register({required this.toggleView});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  final AuthService _auth = AuthService();
  //Create variable for email and Password
  String email = '';
  String password = '';
  String error = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text('Sign up in Brew Crew'),
          actions: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.person),
              label: Text('Sign In'),
              style: TextButton.styleFrom(primary: Colors.black),
              onPressed: (){
                widget.toggleView();
              },
            ),
          ]
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            key: _formKey,
            child: Column(
                children: <Widget>[
                  SizedBox(height: 15.0),
                  TextFormField(
                    validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                    onChanged: (val){
                      setState(() {
                        email = val;
                      });
                    },
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    validator: (val) => val!.length < 6 ? 'Password must by 6 '
                        'characters or more' : null,
                    obscureText: true,
                    onChanged: (val){
                      setState(() {
                        password = val;
                      });
                    },
                  ),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()){
                        dynamic result = await _auth.registerWithEmailAndPassword(
                            email,
                            password);
                        if (result == null){
                          setState(() {
                            error = 'please supply a valid email';
                          });
                        }
                      }
                    },
                    child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white)
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }
}
