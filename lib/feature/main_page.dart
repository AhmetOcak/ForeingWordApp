import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = SELECTED_INDEX;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: PAGES,
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: bottomNavBar(),
    );
  }

  BottomNavigationBar bottomNavBar() {
    return BottomNavigationBar(
      elevation: ELEVATION,
      showUnselectedLabels: false,
      selectedIconTheme: const IconThemeData(
        size: SELECTED_ICON_SIZE,
      ),
      unselectedIconTheme: const IconThemeData(
        size: UNSELECTED_ICON_SIZE,
      ),
      currentIndex: _selectedIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
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
          _pageController.animateToPage(
            value,
            duration: const Duration(
              milliseconds: PAGE_CHANGE_DURATION,
            ),
            curve: Curves.linearToEaseOut,
          );
        });
      },
    );
  }
}
