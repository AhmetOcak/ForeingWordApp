import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/add_word/model/button.dart';
import 'package:foreing_word_app/feature/add_word/model/textfied.dart';

class AddWordView extends StatefulWidget {
  const AddWordView({Key? key}) : super(key: key);

  @override
  State<AddWordView> createState() => _AddWordViewState();
}

class _AddWordViewState extends State<AddWordView> {
  final TextEditingController _primaryTextFieldController =
      TextEditingController();
  final TextEditingController _secondaryTextFieldController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        elevation: ELEVATION,
        title: Text(
          APP_NAME,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFieldModel().customTextField(
            context,
            _primaryTextFieldController,
            TEXTFIELD_P_TEXT,
          ),
          TextFieldModel().customTextField(
            context,
            _secondaryTextFieldController,
            TEXTFIELD_S_TEXT,
          ),
          ButtonModel().customElevatedButton(
            _primaryTextFieldController,
            _secondaryTextFieldController,
            context,
          ),
        ],
      ),
    );
  }
}
