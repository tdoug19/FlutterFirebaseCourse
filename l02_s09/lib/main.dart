import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Welcome',
      home: new Scaffold(
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

