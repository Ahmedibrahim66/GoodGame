import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> with SingleTickerProviderStateMixin {
  bool playagain = true;

  
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(6); // from 0 upto 5 included

   

    var variables = [
      'assets/1.png',
      'assets/2.png',
      'assets/3.png',
      'assets/4.png',
      'assets/5.png',
      'assets/6.png'
    ];
    var variablesNames = ['One', 'Two', 'Three' , 'Four' , 'Five','Six'];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(31, 158, 255, 1),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                variablesNames[randomNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'LexendDeca',
                  color: Colors.white,
                ),
              ),
              AnimatedOpacity(
                opacity: 1 ,
                duration: Duration(seconds: 1),
                child: Container(
                  width: 300,
                  height: 300,
                                  child: Image(
                    image: AssetImage(variables[randomNumber]),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    playagain = true;
                  });
                },
                color: Color.fromRGBO(98, 0, 238, 1),
                child: Container(
                  height: 57.0,
                  width: 300.0,
                  child: Center(
                    child: Text(
                      'Play Again',
                      style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(27.0),
                ),
              )
            ],
          ),
        ),
      ),
    ) ;
  }
}
