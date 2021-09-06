import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context ) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget> [
              CircleAvatar(
                radius: 50.0,
              ),
              Text(
                'Trevor Douglas',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Pacifico',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

