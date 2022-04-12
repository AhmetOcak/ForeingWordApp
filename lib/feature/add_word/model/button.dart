import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/add_word/model/snackbar.dart';
import 'package:foreing_word_app/feature/add_word/viewmodel/addword_viewmodel.dart';

class ButtonModel {
  CustomElevatedButton customElevatedButton(
    TextEditingController primaryTextEditinController,
    TextEditingController secondaryTextEditinController,
    BuildContext context,
  ) {
    return CustomElevatedButton(
      buttonPadding: const EdgeInsets.only(
        top: BUTTON_TOP_PADDING,
      ),
      buttonStyle: ButtonStyle(
        elevation: MaterialStateProperty.all(
          ELEVATION,
        ),
      ),
      onPressed: () {
        final isTrue = AddWordViewModel().addWord(
          primaryTextEditinController.text,
          secondaryTextEditinController.text,
        );
        if (isTrue) {
          FocusScope.of(context).unfocus();
          primaryTextEditinController.clear();
          secondaryTextEditinController.clear();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBarModel().snackBar(SUCCESSFULL, context),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBarModel().snackBar(UNSUCCESSFULL, context),
          );
        }
      },
      buttonTextPadding: const EdgeInsets.all(
        BUTTON_TEXT_PADDING,
      ),
      text: const Text(
        BUTTON_TEXT,
        /*style: TextStyle(
          color: WHITE,
          fontSize: BUTTON_TEXT_SIZE,
        ),*/
      ),
    );
  }
}
