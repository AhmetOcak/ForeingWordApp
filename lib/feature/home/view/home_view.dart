import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/model/word_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
      body: ListView(
        children: [
          WordCard(
            primaryWord: "alien",
            secondaryWord: "uzaylı",
          ),
        ],
      ),
    );
  }
}
