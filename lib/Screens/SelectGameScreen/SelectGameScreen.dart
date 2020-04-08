import 'package:flutter/material.dart';
import 'package:good_game/Screens/Games/CoinFlip/CoinFlipHome.dart';
import 'package:good_game/Screens/Games/Dice/DiceHome.dart';
import 'package:good_game/Screens/Games/RandomCardDeck/CardDeckHome.dart';
import 'package:good_game/Screens/Games/RandomLetter/RandomLetterHome.dart';
import 'package:good_game/Screens/Games/RandomNumber/RandomNumberHome.dart';
import 'package:good_game/Screens/Games/RockPaperScissors/RPSHome.dart';

class SelectGameScreen extends StatefulWidget {
  @override
  _SelectGameScreenState createState() => _SelectGameScreenState();
}

class _SelectGameScreenState extends State<SelectGameScreen> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(5, 96, 252, 1),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Text(
                  'Select a game type',
                  style: TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 0, 40),
                child: Text(
                  'please choose the game you want to play ',
                  style: TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildgamecard(
                      'RockPaperScissors', 'assets/hiclipart.com.png'),
                  buildgamecard('Dice', 'assets/dice.png')
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildgamecard('numbers', 'assets/number-blocks.png'),
                  buildgamecard('cards', 'assets/gambling.png')
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  buildgamecard('coin', 'assets/coin.png'),
                  buildgamecard('letters', 'assets/abc.png')
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: InkWell(
                    onTap: () {
                      if (selectedCard == 'RockPaperScissors') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RPSHome()),
                        );
                      }

                      if (selectedCard == 'coin') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoinFlipHome()),
                        );
                      }

                      if (selectedCard == 'Dice') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DiceHome()),
                        );
                      }

                      if (selectedCard == 'cards') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CardDeck()),
                        );
                      }

                      if (selectedCard == 'letters') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RandomLetter()),
                        );
                      }

                      if (selectedCard == 'numbers') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RandomNumber()),
                        );
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27.0),
                        color: selectedCard == 'WEIGHT'
                            ? Color.fromRGBO(31, 158, 255, 1)
                            : Color.fromRGBO(98, 0, 238, 1),
                        border: Border.all(
                            color: selectedCard == 'WEIGHT'
                                ? Colors.transparent
                                : Colors.grey.withOpacity(0.3),
                            style: BorderStyle.solid,
                            width: 0.75),
                      ),
                      height: 57.0,
                      width: 345.0,
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontFamily: 'LexendDeca',
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildgamecard(String cardTitle, String image) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27.0),
              color: cardTitle == selectedCard
                  ? Color.fromRGBO(98, 0, 238, 1)
                  : Color.fromRGBO(31, 158, 255, 1),
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: 165.0,
            width: 165.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
