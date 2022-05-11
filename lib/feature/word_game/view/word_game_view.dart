import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/components/card/custom_card.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/home/model/card_text.dart';
import 'package:foreing_word_app/feature/word_game/model/textfield.dart';
import 'package:foreing_word_app/feature/word_game/viewmodel/word_game_viewmodel.dart';

class WordGame extends StatefulWidget {
  const WordGame({Key? key}) : super(key: key);

  @override
  State<WordGame> createState() => _WordGameState();
}

class _WordGameState extends State<WordGame> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<String>? _wordList = UserSimplePreferences.getWordList();
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = WordGameViewModel.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text(
          WORD_GAME,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: !WordGameViewModel().wordListIsNull()
            ? [
                card(),
                TextFieldModel(
                  textEditingController: _textEditingController,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: BUTTON_TOP_PADDING,
                  ),
                  child: button(context),
                ),
              ]
            : [
                const Center(
                  child: Text(
                    NO_WORD,
                    style: TextStyle(
                      color: ERROR_COLOR,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
      ),
    );
  }

  CustomCard card() {
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
          word: _wordList![_index],
        ),
      ],
    );
  }

  CustomElevatedButton button(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        setState(() {
          WordGameViewModel().wordGame(
            _textEditingController,
            context,
          );
          _index = WordGameViewModel.index;
        });
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
