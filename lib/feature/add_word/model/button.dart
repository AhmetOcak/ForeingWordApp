import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
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
        backgroundColor: MaterialStateProperty.all(
          SECONDARY_COLOR,
        ),
      ),
      onPressed: () {
        AddWordViewModel().checkAddWord(
          context,
          primaryTextEditinController,
          secondaryTextEditinController,
        );
      },
      buttonTextPadding: const EdgeInsets.all(
        BUTTON_TEXT_PADDING,
      ),
      text: const Text(
        BUTTON_TEXT,
        style: TextStyle(
          color: PRIMARY_COLOR,
          fontSize: BUTTON_TEXT_SIZE,
        ),
      ),
    );
  }
}
