import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CoinFlipGame extends StatefulWidget {
  @override
  _CoinFlipGameState createState() => _CoinFlipGameState();
}

class _CoinFlipGameState extends State<CoinFlipGame> with SingleTickerProviderStateMixin {
  bool playagain = true;

  
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(2); // from 0 upto 2 included

   

    var variables = [
      'assets/Head.png',
      'assets/tail.png',
    ];
    var variablesNames = ['Head', 'Tail'];

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
