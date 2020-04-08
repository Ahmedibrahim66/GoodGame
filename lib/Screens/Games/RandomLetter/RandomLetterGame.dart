import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RandomLetterGame extends StatefulWidget {
  @override
  _RandomLetterGameState createState() => _RandomLetterGameState();
}

class _RandomLetterGameState extends State<RandomLetterGame> with SingleTickerProviderStateMixin {
  bool playagain = true;

  
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(26); // from 0 upto 12 included

  
    var variables = [
     'A','B','C','D','E','F','G','H','I','G','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
    

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
                'Random Letter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'LexendDeca',
                  color: Colors.white,
                ),
              ),
              Container(
                width: 300,
                height: 300,
                  child: Center(
                    child: Text(variables[randomNumber] , 
                    style: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontSize: 250,
                      color: Colors.white
                    ),),
                  )
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
