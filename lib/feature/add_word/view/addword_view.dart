import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/word_app_bar.dart';
import 'package:foreing_word_app/core/components/textfield/custom_textfield.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/add_word/model/textfied.dart';

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
      appBar: const WordAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Model().customTextField(context, _textEditingController),
          Padding(
            padding: const EdgeInsets.only(
              top: BUTTON_TOP_PADDING,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(
                  ELEVATION,
                ),
                backgroundColor: MaterialStateProperty.all(
                  SECONDARY_COLOR,
                ),
              ),
              onPressed: () {
                if (_textEditingController.text.isNotEmpty) {
                  print("Word added");
                  print(_textEditingController.text);
                }
              },
              child: const Padding(
                padding: EdgeInsets.all(
                  BUTTON_TEXT_PADDING,
                ),
                child: Text(
                  BUTTON_TEXT,
                  style: TextStyle(
                    color: PRIMARY_COLOR,
                    fontSize: BUTTON_TEXT_SIZE,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  
}
