import 'package:flutter/material.dart';
import 'package:good_game/Screens/Games/CoinFlip/CoinFlipGame.dart';
import 'package:good_game/Screens/Games/RandomCardDeck/CardDeckGame.dart';
import 'package:good_game/Screens/Games/RandomLetter/RandomLetterGame.dart';
import 'package:good_game/Screens/Games/RandomNumber/RandomNumberGame.dart';
import 'package:good_game/Screens/Games/RockPaperScissors/RPSGame.dart';

class RandomNumber extends StatefulWidget {
  @override
  _RandomNumberState createState() => _RandomNumberState();
}

class _RandomNumberState extends State<RandomNumber> {
  int play=0;
  @override
  Widget build(BuildContext context) {
    return play == 0 ? Scaffold(
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
                child: Image(
                  image: AssetImage('assets/number-blocks.png'),
                ),
              ),

               RaisedButton(
                onPressed: () {
                   setState(() {
                     play = 1;
                   });
                },
                color: Color.fromRGBO(5, 96, 252, 1),
                child: Container(
                       height: 57.0,
                      width: 300.0,
                  child: Center(
                    child: Text(
                      'Play',
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
    ) : RandomNumberGame();
  }
}
