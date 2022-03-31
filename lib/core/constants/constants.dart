// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:foreing_word_app/feature/add_word/view/addword_view.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

const String APP_NAME = "ForeingWord";

const Color PRIMARY_COLOR = Color(0xFF0336FF);
const Color SECONDARY_COLOR = Color(0xFFFFDE03);
const Color WHITE = Color(0xFFFFFFFF);
const String HOME = "HOME";
const String ADD_WORD = "ADD WORD";
const String BUTTON_TEXT = "Add the Word";
const String TEXTFIELD_P_TEXT = "Primary Word";
const String TEXTFIELD_S_TEXT = "Secondary Word";
const int SELECTED_INDEX = 0;
const double ELEVATION = 0;
const double CARD_HEIGHT = 150;
const double CARD_HORIZONTAL_PADDING = 40;
const double CARD_VERTICAL_PADDING = 10;
const Color CARD_TEXT_COLOR = Color(0xFF000000);
const double CARD_TEXT_SIZE = 20;
const double DEFAULT_APP_BAR_HEIGHT = 56.0;
const double TEXTFIELD_TB_PADDING = 16.0;
const double BUTTON_TOP_PADDING = 16.0;
const double BUTTON_TEXT_PADDING = 16.0;
const double BUTTON_TEXT_SIZE = 16.0;
const double SELECTED_ICON_SIZE = 24.0;
const double UNSELECTED_ICON_SIZE = 18.0;

const PAGES = [
  HomeView(),
  AddWordView(),
];

TextStyle cardTextStyle() {
  return const TextStyle(
    color: CARD_TEXT_COLOR,
    fontSize: CARD_TEXT_SIZE,
    fontWeight: FontWeight.bold,
  );
}
