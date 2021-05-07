import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  // TODO: implement createState
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            constraints: BoxConstraints.expand(),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Container(
                      width: 70,
                      height: 70,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffd8d8d8),
                      ),
                      child: FlutterLogo()),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 70),
                  child: Text("Hello\nWellCome Back", style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,20),
                  child: TextField(
                    style: TextStyle(fontSize: 18, color: Colors.black),
                    decoration: InputDecoration(
                      labelText: "EMAIL:",
                      labelStyle: TextStyle(color: Colors.lightBlueAccent, fontSize: 20)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.black),
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "PASSWORD:",
                            labelStyle: TextStyle(color: Colors.lightBlueAccent, fontSize: 20)
                        ),
                      ),
                      Text("SHOW", style: TextStyle(
                            fontSize: 15,
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                // ignore: deprecated_member_use
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      onPressed: onSignClick,
                      child: Text("SIGN IN", style: TextStyle( color: Colors.white, fontSize: 20),),
                    ),
                  ),
                ),
                Container(
                    height: 150,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("New User",style: TextStyle(fontSize: 16,color: Colors.lightBlueAccent),
                        ),
                        Text("Forgot PassWord",style: TextStyle(fontSize: 16,color: Colors.lightBlueAccent),
                        )
                      ],
                    ),
                  ),
              ],
            )),
      ),
    );
  }
  void onSignClick(){}
}
