import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/components/appbar/custom_appbar.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class AppBarModel {
  CustomAppBar customAppBar() {
    return const CustomAppBar(
      backgroundColor: PRIMARY_COLOR,
      elevation: ELEVATION,
      title: Text(
        APP_NAME,
        style: TextStyle(
          color: WHITE,
        ),
      ),
    );
  }
}
