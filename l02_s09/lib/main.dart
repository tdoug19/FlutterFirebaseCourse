import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'Welcome',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter is cool!'),
          leading: new Icon(
            Icons.cake
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.sd_card),
              tooltip: 'hi',
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.pie_chart),
              tooltip:'Wow',
              onPressed: () => {},
            ),
            new IconButton(
              onPressed: () => {},
                icon: icon)
          ],
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

