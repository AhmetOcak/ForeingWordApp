import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    this.elevation,
    this.backgroundColor,
    this.title,
    Key? key,
  }) : super(key: key);

  final double? elevation;
  final Color? backgroundColor;
  final Text? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor,
      elevation: elevation,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DEFAULT_APP_BAR_HEIGHT);
}
