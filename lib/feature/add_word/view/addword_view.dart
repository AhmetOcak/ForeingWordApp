import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
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
  final TextEditingController _primaryTextFieldController =
      TextEditingController();
  final TextEditingController _secondaryTextFieldController =
      TextEditingController();

  @override
  void dispose() {
    _primaryTextFieldController.dispose();
    _secondaryTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => AddWordViewModel().onBackPressed(context),
      child: Scaffold(
        appBar: CustomAppBar(
          elevation: ELEVATION,
          title: const Text(
            APP_NAME,
          ),
          leading: IconButton(
            onPressed: () => AddWordViewModel().returnHomeScreen(context),
            icon: const Icon(
              Icons.arrow_back,
              color: WHITE,
            ),
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
            Padding(
              padding: const EdgeInsets.only(
                top: BUTTON_TOP_PADDING,
              ),
              child: ButtonModel().customElevatedButton(
                _primaryTextFieldController,
                _secondaryTextFieldController,
                context,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
