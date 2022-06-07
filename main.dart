import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MaterialApp(
      home: Home1(),
    ));

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Icons.home,
          nextScreen: Home(),
          splashTransition: SplashTransition.fadeTransition,
        ));
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.grey[850] : Colors.white,
      appBar: AppBar(title: Text('Portfolio'), centerTitle: true, backgroundColor: Colors.purple[700]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(child: CircleAvatar(backgroundImage: AssetImage('assets/image_2.jpg'), radius: 100)),
          Divider(
            height: 40,
            color: Colors.grey[850],
          ),
          Text('NAME'),
          Text(
            'Lavanya M',
            style: TextStyle(fontFamily: 'KdamThmorPro', fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Container(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        'I am a student pursuing BSc. (Hons.) in Computer Science. I completed my schooling at D.A.V Public School. I love learning new skills and coding. I am a problem solver with dependable critical thinking skills. My calm attitude enables me to make good decisions in high-pressure situations.',
                        style: TextStyle(fontFamily: 'KdamThmorPro', fontWeight: FontWeight.bold),
                      )))),
          Text('\n'),
          Column(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('Skills'),
              ),
              Text('\n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () async {
                      await Future.delayed(
                        Duration(seconds: 1),
                      );
                      Fluttertoast.showToast(
                        msg: "Learned Python in 11th and 12th grade.",
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    },
                    child: Text('Python'),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      await Future.delayed(
                        Duration(seconds: 1),
                      );
                      Fluttertoast.showToast(
                        msg: "Learned C++ in First Semester.",
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    },
                    child: Text('C++'),
                  ),
                  RaisedButton(
                      onPressed: () async {
                        await Future.delayed(
                          Duration(seconds: 1),
                        );
                        Fluttertoast.showToast(
                          msg: "Currently learning Java in Second semester",
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      },
                      child: Text('Java')),
                ],
              )
            ],
          ),
          Text('\n\n'),
          Row(children: <Widget>[
            Icon(
              Icons.email,
            ),
            SizedBox(width: 10),
            Text('lavanya232003@ms.du.ac.in', style: TextStyle(fontFamily: 'KdamThmorPro', fontWeight: FontWeight.bold)),
          ]),
          Row(children: <Widget>[
            Icon(
              Icons.call,
            ),
            SizedBox(width: 10),
            Text('9289882127', style: TextStyle(fontFamily: 'KdamThmorPro', fontWeight: FontWeight.bold)),
          ]),
          Row(children: <Widget>[
            Icon(
              Icons.location_city,
            ),
            SizedBox(width: 10),
            Text('C-47 Pocket 12 Jasola Vihar New Delhi', style: TextStyle(fontFamily: 'KdamThmorPro', fontWeight: FontWeight.bold)),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            RaisedButton(
              onPressed: () {
                setState(() {
                  darkMode = true;
                });
              },
              child: Text(
                'Dark',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  darkMode = false;
                });
              },
              child: Text(
                'Light',
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.white,
            ),
          ]),
        ],
      ),
      // ignore: prefer_const_constructors
    );
  }
}
