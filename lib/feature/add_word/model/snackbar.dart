import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class SnackBarModel {
  SnackBar snackBar(String content, BuildContext context, Color textColor, Color backgroundColor) {
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
        seconds: 1,
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
    );
  }
}
