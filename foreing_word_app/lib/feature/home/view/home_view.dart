import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/model/bot_nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = SELECTED_INDEX;

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
        elevation: APP_BAR_ELEVATION,
      ),
      body: Center(
        child: Column(),
      ),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}



