import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: AppBar(
        title: const Text(
          APP_NAME,
          style: TextStyle(color: WHITE,),
        ),
        backgroundColor: PRIMARY_COLOR,
        elevation: 0,
      ),
      body: Center(
        child: Column(),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
    );
  }
}
