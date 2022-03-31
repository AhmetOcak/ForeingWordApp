import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/components/button/custom_button.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/add_word/model/button.dart';
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
          ButtonModel().customElevatedButton(_textEditingController),
        ],
      ),
    );
  }
}
