import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/word_game/viewmodel/word_game_viewmodel.dart';

class ButtonModel extends StatelessWidget {
  const ButtonModel({
    Key? key,
    required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        WordGameViewModel().wordGame(
          _textEditingController,
          context,
        );
      },
      buttonTextPadding: const EdgeInsets.all(
        BUTTON_TEXT_PADDING,
      ),
      text: const Text(
        WORD_GAME_BUTTON_TEXT,
        style: TextStyle(
          color: PRIMARY_COLOR,
          fontSize: BUTTON_TEXT_SIZE,
        ),
      ),
      buttonPadding: const EdgeInsets.only(
        top: BUTTON_TOP_PADDING,
      ),
      buttonStyle: ButtonStyle(
        elevation: MaterialStateProperty.all(
          ELEVATION,
        ),
        backgroundColor: MaterialStateProperty.all(
          SECONDARY_COLOR,
        ),
      ),
    );
  }
}
