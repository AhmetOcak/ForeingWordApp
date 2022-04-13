import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/main_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserSimplePreferences.init();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
      theme: ThemeData(
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
