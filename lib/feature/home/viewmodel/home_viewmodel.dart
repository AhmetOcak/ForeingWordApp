import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class HomeViewModel {
  Function? goToNextScreen(BuildContext context) {
    Navigator.pushNamed(context, ADD_WORD_SCREEN);
  }
}