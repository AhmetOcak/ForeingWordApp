import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    this.elevation,
    this.backgroundColor,
    this.title,
    this.action,
    Key? key,
  }) : super(key: key);

  final double? elevation;
  final Color? backgroundColor;
  final Text? title;
  final List<Widget>? action;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: elevation,
      actions: action,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DEFAULT_APP_BAR_HEIGHT);
}
