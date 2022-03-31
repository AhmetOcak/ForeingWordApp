// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const double DEFAULT_PADDING_VALUE = 0;

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.controller,
      this.padding,
      this.cursorColor,
      this.style,
      this.enabledBorder,
      this.focusedBorder,
      this.labelStyle,
      this.labelText,
      this.focusColor})
      : super(key: key);

  final TextEditingController? controller;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final TextStyle? style;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? labelStyle;
  final String? labelText;
  final Color? focusColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(DEFAULT_PADDING_VALUE),
      child: TextField(
        controller: controller,
        cursorColor: cursorColor,
        style: style,
        decoration: InputDecoration(
          enabledBorder: enabledBorder,
          focusedBorder: focusedBorder,
          labelStyle: labelStyle,
          labelText: labelText,
          focusColor: focusColor,
        ),
      ),
    );
  }
}
