import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class RandomNumberGame extends StatefulWidget {
  @override
  _RandomNumberGameState createState() => _RandomNumberGameState();
}

class _RandomNumberGameState extends State<RandomNumberGame> with SingleTickerProviderStateMixin {
  bool playagain = true;

  
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(10); // from 0 upto 12 included

  
    var variables = [
     '1','2','3','4','5','6','7','8','9','10'];
    

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
                'Random Number',
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
