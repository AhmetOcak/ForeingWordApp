import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/textfield/custom_textfield.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class TextFieldModel {
  CustomTextField customTextField(
      BuildContext context, TextEditingController textEditingController, String text) {
    return CustomTextField(
      controller: textEditingController,
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.blue
        ),
      ),
      labelText: text,
    );
  }
}
