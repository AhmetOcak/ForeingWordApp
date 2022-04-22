import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/add_word/view/addword_view.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(
    MaterialApp(
      routes: {
        '/': (context) => const HomeView(),
        '/addWordScreen': (context) => const AddWordView(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: SECONDARY_COLOR,
        ),
        splashFactory: NoSplash.splashFactory,
        scaffoldBackgroundColor: PRIMARY_COLOR,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: SECONDARY_COLOR,
          unselectedItemColor: WHITE,
          backgroundColor: Colors.transparent,
          elevation: ELEVATION,
        ),
        cardColor: SECONDARY_COLOR,
      ),
    ),
  );
}
