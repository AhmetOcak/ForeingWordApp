import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';
import 'package:foreing_word_app/feature/home/viewmodel/home_viewmodel.dart';

class CustomFloatActionButton extends StatelessWidget {
  const CustomFloatActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        HomeViewModel().goToNextScreen(context);
      },
      backgroundColor: SECONDARY_COLOR,
      elevation: FLOAT_ACT_BUTTON_ELEV,
      child: const Icon(
        Icons.add,
        color: PRIMARY_COLOR,
      ),
    );
  }
}
