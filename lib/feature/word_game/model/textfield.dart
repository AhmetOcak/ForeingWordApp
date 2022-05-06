import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/textfield/custom_textfield.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class TextFieldModel extends StatelessWidget {
  const TextFieldModel({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: textEditingController,
      textAling: TextAlign.center,
      cursorColor: SECONDARY_COLOR,
      padding: EdgeInsets.fromLTRB(
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
        MediaQuery.of(context).size.width * 0.15,
        TEXTFIELD_TB_PADDING,
      ),
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: SECONDARY_COLOR,
        ),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: SECONDARY_COLOR,
        ),
      ),
      style: const TextStyle(
        color: WHITE,
      ),
      labelStyle: const TextStyle(
        color: SECONDARY_COLOR,
      ),
    );
  }
}
