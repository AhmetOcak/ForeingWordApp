import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/card/custom_card.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/model/card_text.dart';

class WordCard extends StatelessWidget {
  const WordCard({
    Key? key,
    required this.primaryWord,
    required this.secondaryWord,
  }) : super(key: key);

  final String primaryWord;
  final String secondaryWord;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      elevation: ELEVATION,
      height: CARD_HEIGHT,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      padding: const EdgeInsets.only(
        left: CARD_HORIZONTAL_PADDING,
        right: CARD_HORIZONTAL_PADDING,
        top: CARD_VERTICAL_PADDING,
      ),
      children: [
        CardText(
          word: primaryWord,
        ),
        const RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.compare_arrows_outlined,
            color: PRIMARY_COLOR,
          ),
        ),
        CardText(
          word: secondaryWord,
        ),
      ],
    );
  }
}
