import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _selectedIndex = SELECTED_INDEX;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: PRIMARY_COLOR,
      selectedItemColor: SECONDARY_COLOR,
      unselectedItemColor: WHITE,
      elevation: ELEVATION,
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: HOME,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add,
          ),
          label: ADD_WORD,
        ),
      ],
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
    );
  }
}
