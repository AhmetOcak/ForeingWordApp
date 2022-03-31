import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = SELECTED_INDEX;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PAGES[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}