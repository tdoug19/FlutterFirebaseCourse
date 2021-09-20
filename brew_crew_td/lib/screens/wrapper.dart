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
    print(user);

    // return Home or Authenticate widget
    return Authenticate();
  }
}
