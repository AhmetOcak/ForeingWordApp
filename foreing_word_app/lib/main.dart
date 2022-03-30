import 'package:flutter/material.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeView(),
    theme: ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    ),
  ));
}
