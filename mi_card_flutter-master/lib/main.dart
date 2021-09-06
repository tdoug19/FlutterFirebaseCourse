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
          child: Container(
            height: 100.0,
            width: 150.0,
            margin: EdgeInsets.only(left: 10.0),
            color: Colors.white,
            child: Text('hello there'),
          ),
        ),
      ),
    );
  }
}

