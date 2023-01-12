import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterwave_card_deck/utils/widgets/animated_card_deck.dart';
import 'package:flutterwave_card_deck/utils/widgets/atm_card.dart';

class PlaygroundPage extends StatefulWidget {
  @override
  _PlaygroundPageState createState() => _PlaygroundPageState();
}

class _PlaygroundPageState extends State<PlaygroundPage>
    with TickerProviderStateMixin {
  List<ATMCardUIDetails> cardsDetailsList = [
    ATMCardUIDetails(
      cardIcon: CupertinoIcons.money_dollar_circle,
      color: Color(0xff02559A),
      cardName: "Dollar",
      cardOwner: "TIM SNEATH",
      cardPan: "1010967890181234",
    ),
    ATMCardUIDetails(
      cardIcon: CupertinoIcons.money_pound_circle,
      color: Color(0xffF3192D),
      cardName: "Pound",
      cardOwner: "TIMILEHIN JEGEDE",
      cardPan: "1010967900181112",
    ),
    ATMCardUIDetails(
      color: Color(0xff000000),
      cardName: "Bitcoin",
      cardIcon: CupertinoIcons.bitcoin_circle,
      cardOwner: "LETS4R",
      cardPan: "1010102412346789",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CardStack(
          cardsDetailsList: cardsDetailsList,
          size: MediaQuery.of(context).size.width * 0.8,
        ),
      ),
    );
  }
}
