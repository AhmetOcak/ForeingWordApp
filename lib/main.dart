// Ahmet Ocak

import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/add_word/view/addword_view.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';
import 'package:foreing_word_app/feature/word_game/view/word_game_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(
    MaterialApp(
      routes: {
        HOME_SCREEN: (context) => const HomeView(),
        ADD_WORD_SCREEN: (context) => const AddWordView(),
        WORD_GAME_SCREEN: (context) => const WordGame()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: SECONDARY_COLOR,
        ),
        splashFactory: NoSplash.splashFactory,
        scaffoldBackgroundColor: PRIMARY_COLOR,
        cardColor: SECONDARY_COLOR,
      ),
    ),
  );
}
