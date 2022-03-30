import 'package:flutter/material.dart';
import 'package:foreing_word_app/core/constants/constants.dart';

class WordAppBar extends StatelessWidget with PreferredSizeWidget {
  const WordAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        APP_NAME,
        style: TextStyle(
          color: WHITE,
        ),
      ),
      backgroundColor: PRIMARY_COLOR,
      elevation: ELEVATION,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(DEFAULT_APP_BAR_HEIGHT);
}
