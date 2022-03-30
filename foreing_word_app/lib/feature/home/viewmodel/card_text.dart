import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class CardText extends StatelessWidget {
  const CardText({
    Key? key,
    required this.word,
  }) : super(key: key);

  final String word;

  @override
  Widget build(BuildContext context) {
    return Text(
      word.toUpperCase(),
      style: cardTextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
