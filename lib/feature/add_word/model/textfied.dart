import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/textfield/custom_textfield.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class Model {
  CustomTextField customTextField(BuildContext context, TextEditingController textEditingController) {
    return CustomTextField(
      controller: textEditingController,
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
      ),
      cursorColor: SECONDARY_COLOR,
      style: const TextStyle(
        color: WHITE,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: SECONDARY_COLOR,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: SECONDARY_COLOR,
        ),
      ),
      labelStyle: const TextStyle(
        color: SECONDARY_COLOR,
      ),
      labelText: TEXTFIELD_P_TEXT,
      focusColor: SECONDARY_COLOR,
    );
  }
}