import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/add_word/model/textfied.dart';
import 'package:foreing_word_app/feature/add_word/viewmodel/addword_viewmodel.dart';

class AddWordView extends StatefulWidget {
  const AddWordView({Key? key}) : super(key: key);

  @override
  State<AddWordView> createState() => _AddWordViewState();
}

class _AddWordViewState extends State<AddWordView> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      appBar: const CustomAppBar(
        backgroundColor: PRIMARY_COLOR,
        elevation: ELEVATION,
        title: Text(
          APP_NAME,
          style: TextStyle(
            color: WHITE,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldModel().customTextField(context, _textEditingController),
          customElevatedButton(_textEditingController),
        ],
      ),
    );
  }

  CustomElevatedButton customElevatedButton(
      TextEditingController textEditingController) {
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
          AddWordViewModel().checkTextField(_textEditingController.text);
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
