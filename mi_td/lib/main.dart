import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  //Image to go here
                  radius: 50.0,
                  backgroundImage: AssetImage('images/TD.png'),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Trevor Douglas',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'SOFTWARE ENGINEER',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.tealAccent,
                    letterSpacing: 2.0,
                    fontFamily: 'SourceSansPro',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: 10.0,
                    width: 200.0,
                    child: Divider(
                      color: Colors.tealAccent,
                      height: 20,
                      thickness: 3,
                    )),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          size: 50.0,
                          color: Colors.teal,
                        ),
                        title: Text("306.351.0715",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'SourceSansPro',
                              letterSpacing: 1.5,
                              color: Colors.teal,
                            )),
                      )),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 50.0,
                          color: Colors.teal,
                        ),
                        title: Text("trevor.douglas@uregina.ca",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontFamily: 'SourceSansPro',
                              letterSpacing: 1.0,
                              color: Colors.teal,
                            )),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Row(
                  //   children: <Widget>[
                  //     Icon(
                  //       Icons.email,
                  //       size: 50.0,
                  //       color: Colors.teal,
                  //     ),
                  //     SizedBox(
                  //       width: 20.0,
                  //     ),
                  //     Text("tdoug19gmail.com",
                  //         style: TextStyle(
                  //           fontSize: 20.0,
                  //           fontFamily: 'SourceSansPro',
                  //           letterSpacing: 1.5,
                  //           color: Colors.teal,
                  //         )),
                  //   ],
                  // ),