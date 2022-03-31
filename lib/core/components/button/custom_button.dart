// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const double DEFAULT_PADDING = 0;

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.buttonPadding,
    this.buttonStyle,
    this.onPressed,
    this.buttonTextPadding,
    this.text,
  }) : super(key: key);

  final EdgeInsetsGeometry? buttonPadding;
  final ButtonStyle? buttonStyle;
  final Function? onPressed;
  final EdgeInsetsGeometry? buttonTextPadding;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: buttonPadding ?? const EdgeInsets.all(DEFAULT_PADDING),
      child: ElevatedButton(
        style: buttonStyle,
        onPressed: onPressed as void Function(),
        child: Padding(
          padding: buttonTextPadding ?? const EdgeInsets.all(DEFAULT_PADDING),
          child: text,
        ),
      ),
    );
  }
}
