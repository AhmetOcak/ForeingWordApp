import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class AppBarModel {
  CustomAppBar customAppBar(BuildContext context) {
    return CustomAppBar(
      elevation: ELEVATION,
      title: const Text(
        APP_NAME,
      ),
      action: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, WORD_GAME_SCREEN);
          },
          icon: const Icon(
            Icons.gamepad,
          ),
        ),
      ],
    );
  }
}
