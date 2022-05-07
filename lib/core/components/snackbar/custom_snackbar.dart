import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class CustomSnackBarModel {
  SnackBar snackBar(String content, BuildContext context, Color textColor,
      Color backgroundColor) {
    return SnackBar(
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevation: ELEVATION,
      duration: const Duration(
        seconds: SNACKBAR_DURATION,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
    );
  }
}
