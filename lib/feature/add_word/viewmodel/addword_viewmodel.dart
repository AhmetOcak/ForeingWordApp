import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

class AddWordViewModel {
  bool addWord(String? primaryText, String? secondaryText) {
    if (primaryText!.isNotEmpty && secondaryText!.isNotEmpty) {
      UserSimplePreferences.setWordList(primaryText, secondaryText);
      return true;
    }
    return false;
  }

  Future<bool> onBackPressed(BuildContext context) async {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (builder) => const HomeView(),
      ),
      (route) => false,
    );
    return true;
  }

  void returnHomeScreen(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (builder) => const HomeView(),
      ),
      (route) => false,
    );
  }
}
