// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const double DEFAULT_PADDING = 0;

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    this.buttonStyle,
    required this.onPressed,
    this.buttonTextPadding,
    this.text,
  }) : super(key: key);

  final ButtonStyle? buttonStyle;
  final void Function() onPressed;
  final EdgeInsetsGeometry? buttonTextPadding;
  final Text? text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle,
      onPressed: onPressed,
      child: Padding(
        padding: buttonTextPadding ?? const EdgeInsets.all(DEFAULT_PADDING),
        child: text,
      ),
    );
  }
}
