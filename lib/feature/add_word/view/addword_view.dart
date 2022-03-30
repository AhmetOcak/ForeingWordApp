import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/word_app_bar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class AddWordView extends StatefulWidget {
  AddWordView({Key? key}) : super(key: key);

  @override
  State<AddWordView> createState() => _AddWordViewState();
}

class _AddWordViewState extends State<AddWordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: const WordAppBar(),
      body: Column(),
    );
  }
}