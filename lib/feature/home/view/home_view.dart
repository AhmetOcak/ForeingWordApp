import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/model/bot_nav_bar.dart';
import 'package:foreing_word_app/feature/home/model/word_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: AppBar(
        title: const Text(
          APP_NAME,
          style: TextStyle(
            color: WHITE,
          ),
        ),
        backgroundColor: PRIMARY_COLOR,
        elevation: ELEVATION,
      ),
      body: ListView(
        children: [
          WordCard(
            primaryWord: "alien",
            secondaryWord: "uzaylı",
          ),
        ],
      ),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}
