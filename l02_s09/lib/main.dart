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
              icon: new Icon(Icons.photo_album),
              onPressed: () => {},
               ),
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
            items: [
              new BottomNavigationBarItem(
                icon: new Icon(Icons.account_balance),
                title: new Text("Bank")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.apps),
                  title: new Text("Apps")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.shopping_basket),
                  title: new Text("Cart")
              ),
            ]
        ),
        body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Column(
            children: [
              new Text("Hello World"),
              new TextField(
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Please Enter Text'
                ),
              ),
              new Checkbox(
                  value: false,
                  onChanged: null,
              ),
              new Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: null,
              ),
              new Switch(
                value: false,
                onChanged: null,
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new ElevatedButton(
                      onPressed: () {},
                      child: const Text("Raised"),
                  ),
                  new ElevatedButton(
                    onPressed: () {},
                    child: const Text("Disabled"),
                  ),
                ]
              ),
              new ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new TextButton(
                      onPressed: () {},
                      child: const Text("Raised"),
                    ),
                    new TextButton(
                      onPressed: () {},
                      child: const Text("Disabled"),
                    ),
                  ]
              ),
              new ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new OutlinedButton(
                      onPressed: () {},
                      child: const Text("Raised"),
                    ),
                    new OutlinedButton(
                      onPressed: () {},
                      child: const Text("Disabled"),
                    ),
                  ]
              ),
              new Image.network(
                  'http://thecatapi.com/api/images/get?formet=src&type=gif',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

