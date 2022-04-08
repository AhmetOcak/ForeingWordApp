import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class SnackBarModel {
  SnackBar snackBar(String content, BuildContext context) {
    return SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: PRIMARY_COLOR,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: ELEVATION,
      duration: const Duration(
        seconds: 1,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: SECONDARY_COLOR,
    );
  }
}
