import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/snackbar/custom_snackbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/core/utils/user_simple_preferences.dart';
import 'package:foreing_word_app/feature/home/view/home_view.dart';

class AddWordViewModel {
  bool _addWord(String? primaryText, String? secondaryText) {
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

  void checkAddWord(
    BuildContext context,
    TextEditingController primaryTextEditinController,
    TextEditingController secondaryTextEditinController,
  ) {
    final isTrue = AddWordViewModel()._addWord(
      primaryTextEditinController.text,
      secondaryTextEditinController.text,
    );
    if (isTrue) {
      FocusScope.of(context).unfocus();
      primaryTextEditinController.clear();
      secondaryTextEditinController.clear();
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBarModel().snackBar(
          SUCCESSFULL,
          context,
          PRIMARY_COLOR,
          SNACKBAR_SUCCESSFULL_COLOR,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackBarModel().snackBar(
          UNSUCCESSFULL,
          context,
          PRIMARY_COLOR,
          ERROR_COLOR,
        ),
      );
    }
  }
}
