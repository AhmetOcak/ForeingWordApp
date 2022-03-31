import 'package:flutter/material.dart';
import 'package:foreing_word_app/feature/main_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MainPage(),
    theme: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
  ));
}
