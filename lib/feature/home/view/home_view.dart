import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/home/model/word_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> _wordList = [];

  @override
  void initState() {
    _wordList = UserSimplePreferences.getWordList() ?? [];
    super.initState();
    print(_wordList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: const CustomAppBar(
        backgroundColor: PRIMARY_COLOR,
        elevation: ELEVATION,
        title: Text(
          APP_NAME,
          style: TextStyle(
            color: WHITE,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _wordList.length ~/ 2,
        itemBuilder: (context, index) {
          return WordCard(
            primaryWord: _wordList[index * 2],
            secondaryWord: _wordList[(index * 2) + 1],
          );
        },
      ),
    );
  }
}
