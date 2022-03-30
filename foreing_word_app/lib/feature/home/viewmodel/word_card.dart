import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class WordCard extends StatelessWidget {
  const WordCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: CARD_HEIGHT,
      padding: const EdgeInsets.only(
        left: CARD_HORIZONTAL_PADDING,
        right: CARD_HORIZONTAL_PADDING,
        top: CARD_VERTICAL_PADDING,
      ),
      child: Card(
        elevation: ELEVATION,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "MERHABA",
                style: TextStyle(
                  color: CARD_TEXT_COLOR,
                  fontSize: CARD_TEXT_SIZE,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: Icon(
                  Icons.compare_arrows_outlined,
                  color: PRIMARY_COLOR,
                ),
              ),
              Text(
                "HELLO",
                style: TextStyle(
                  color: CARD_TEXT_COLOR,
                  fontSize: CARD_TEXT_SIZE,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
