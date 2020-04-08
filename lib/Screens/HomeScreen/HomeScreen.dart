import 'dart:async';

import 'package:flutter/material.dart';
import 'package:good_game/Screens/SelectGameScreen/SelectGameScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showTextOne = false;
  bool showTextTwo = false;
  bool showTextThree = false;

  @override
  void initState() {
    Timer _timer = new Timer(const Duration(milliseconds: 500), () {
      setState(() {
        showTextOne = !showTextOne;
      });
    });

    Timer _timer2 = new Timer(const Duration(seconds: 1), () {
      setState(() {
        showTextTwo = !showTextTwo;
      });
    });

    Timer _timer3 =
        new Timer(const Duration(seconds: 1 , milliseconds: 500), () {
      setState(() {
        showTextThree = !showTextThree;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.6, 1],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Color.fromRGBO(31, 158, 255, 1),
            Color.fromRGBO(5, 96, 252, 1),
          ],
        )),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 160,
                child: Center(
                  child: Text('GG',
                      style: TextStyle(
                        fontFamily: 'LexendDeca',
                        color: Colors.white,
                        fontSize: 150,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedOpacity(
                    opacity: showTextOne ? 1.0 : 0,
                    duration: Duration(milliseconds: 500),
                    child: Text('Good',
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  AnimatedOpacity(
                    opacity: showTextTwo ? 1.0 : 0,
                    duration: Duration(milliseconds: 500),
                    child: Text('Game',
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3)),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              AnimatedOpacity(
                opacity: showTextThree ? 1.0 : 0,
                duration: Duration(milliseconds: 500),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SelectGameScreen()),
                    );
                  },
                  color: Colors.white,
                  child: Container(
                    width: 170,
                    height: 45,
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 18,
                            color: Color.fromRGBO(31, 158, 255, 1)),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
