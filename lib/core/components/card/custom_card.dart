import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

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
            children: children,
          ),
        ),
      ),
    );
  }
}
