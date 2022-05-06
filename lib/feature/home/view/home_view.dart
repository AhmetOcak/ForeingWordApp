import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/home/model/app_bar.dart';
import 'package:foreing_word_app/feature/home/model/float_act_button.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatActionButton(),
      appBar: AppBarModel().customAppBar(context),
      body: ListView.builder(
        padding: const EdgeInsets.only(
          bottom: LISTVIEW_BUILDER_BOTTOM_PAD,
        ),
        itemCount: _wordList.length ~/ 2,
        itemBuilder: (context, index) {
          return dismissible(index);
        },
      ),
    );
  }

  Dismissible dismissible(int index) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (value) {
        UserSimplePreferences.deleteWordFromList(index * 2, (index * 2) + 1);
        setState(() {
          _wordList = UserSimplePreferences.getWordList()!;
        });
      },
      child: WordCard(
        primaryWord: _wordList[index * 2],
        secondaryWord: _wordList[(index * 2) + 1],
      ),
    );
  }
}
