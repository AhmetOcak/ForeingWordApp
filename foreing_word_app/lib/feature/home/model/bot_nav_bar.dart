import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/viewmodel/home_viewmodel.dart';

class BotNavBar extends StatelessWidget {
  BotNavBar({
    Key? key, required Function onTap,
  }) : super(key: key);

  final int _selectedIndex = 0;
  late Function onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: PRIMARY_COLOR,
      selectedItemColor: SECONDARY_COLOR,
      unselectedItemColor: WHITE,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: HOME,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: ADD_WORD,
        ),
      ],
      onTap: (value) => onTap,
      currentIndex: _selectedIndex,
    );
  }
}