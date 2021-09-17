import 'package:brew_crew_td/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // return Home or Authenticate widget
    return Authenticate();
  }
}
