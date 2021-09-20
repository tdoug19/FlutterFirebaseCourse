import 'package:brew_crew_td/models/user.dart';
import 'package:brew_crew_td/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Access the users state I suppose.
    final user = Provider.of<User?>(context);

    //if the user is null, then the user has logged out.
    print(user);
    if(user == null){
      return Authenticate();
    }
    else{
      return Home();
    }

  }
}
