import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/snackbar/custom_snackbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';

class WordGameViewModel {
  final List<String>? _wordList = UserSimplePreferences.getWordList();
  static int index = 0;

  String _randomWord() {
    int randomNumber = Random().nextInt(_wordList!.length);
    while (true) {
      randomNumber = Random().nextInt(_wordList!.length);
      index = randomNumber;
      if (randomNumber % 2 == 0) {
        break;
      }
    }
    return _wordList![randomNumber];
  }

  bool wordListIsNull() {
    if (_wordList == null || _wordList!.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool _checkWord(String word) {
    if (word == _wordList![index + 1]) {
      return true;
    } else {
      return false;
    }
  }
  

  void wordGame(
    TextEditingController textEditingController,
    BuildContext context,
  ) {
    if (!WordGameViewModel().wordListIsNull()) {
      WordGameViewModel()._randomWord();
      bool result = WordGameViewModel()._checkWord(
        textEditingController.text.toLowerCase(),
      );
      if (result) {
        FocusScope.of(context).unfocus();
        ScaffoldMessenger.of(context).showSnackBar(
          CustomSnackBarModel().snackBar(
            "True!!",
            context,
            PRIMARY_COLOR,
            SNACKBAR_SUCCESSFULL_COLOR,
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          CustomSnackBarModel().snackBar(
            "Wrong!!",
            context,
            WHITE,
            ERROR_COLOR,
          ),
        );
      }
      textEditingController.clear();
    }
  }
}
