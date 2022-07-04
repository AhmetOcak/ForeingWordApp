// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:foreing_word_app/feature/add_word/view/addword_view.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

const String APP_NAME = "Yabancı Kelime Defteri";

// COLORS
const Color PRIMARY_COLOR = Color(0xFF000000);
const Color SECONDARY_COLOR = Color(0xFFC9040E);
const Color WHITE = Color(0xFFFFFFFF);
const Color CARD_TEXT_COLOR = Color(0xFF000000);
const Color ERROR_COLOR = Color(0xFFC9040E);
const Color SNACKBAR_SUCCESSFULL_COLOR = Color(0xFF39FF14);

/*
const Color PRIMARY_COLOR = Color(0xFF0336FF);
const Color SECONDARY_COLOR = Color(0xFFFFDE03);
const Color ERROR_COLOR = Color(0xFFFF604F);
*/

// TEXTS
const String HOME = "MY WORDS";
const String ADD_WORD = "ADD WORD";
const String BUTTON_TEXT = "Add the Word";
const String TEXTFIELD_P_TEXT = "Primary Word";
const String TEXTFIELD_S_TEXT = "Secondary Word";
const String SUCCESSFULL = "The word has been successfully added!!";
const String UNSUCCESSFULL = "Please fill in all fields!!";
const String WORD_GAME = "Word Game";
const String WORD_GAME_BUTTON_TEXT = "Guess";
const String NO_WORD = "You don't have words!!";

// ROUTE NAME
const String HOME_SCREEN = '/';
const String ADD_WORD_SCREEN = '/addWordScreen';
const String WORD_GAME_SCREEN = '/wordGameScreen';

// DIMENS
const int SELECTED_INDEX = 0;
const double ELEVATION = 0;
const double FLOAT_ACT_BUTTON_ELEV = 0;
const double CARD_HEIGHT = 125;
const double CARD_HORIZONTAL_PADDING = 40;
const double CARD_VERTICAL_PADDING = 10;
const double CARD_TEXT_SIZE = 20;
const double DEFAULT_APP_BAR_HEIGHT = 56.0;
const double TEXTFIELD_TB_PADDING = 16.0;
const double BUTTON_TOP_PADDING = 16.0;
const double BUTTON_TEXT_PADDING = 16.0;
const double BUTTON_TEXT_SIZE = 16.0;
const double SELECTED_ICON_SIZE = 24.0;
const double UNSELECTED_ICON_SIZE = 18.0;
const int PAGE_CHANGE_DURATION = 500;
const double APPBAR_ACTION_PADDING = 16.0;
const double LISTVIEW_BUILDER_BOTTOM_PAD = 10.0;

// DURATIONS
const int SNACKBAR_DURATION = 1;


// PAGE ARRAY FOR BOTTOM NAVIGATION BAR
const PAGES = [
  HomeView(),
  AddWordView(),
];

// CARD TEXTSTYLE
TextStyle cardTextStyle() {
  return const TextStyle(
    color: PRIMARY_COLOR,
    fontSize: CARD_TEXT_SIZE,
    fontWeight: FontWeight.bold,
  );
}
