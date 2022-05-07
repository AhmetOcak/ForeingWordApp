import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.children,
    required this.height,
    required this.padding,
    required this.elevation,
    required this.mainAxisAlignment,
  }) : super(key: key);

  final List<Widget> children;
  final double height;
  final EdgeInsetsGeometry padding;
  final double elevation;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      child: Card(
        elevation: elevation,
        child: Center(
          child: Column(
            mainAxisAlignment: mainAxisAlignment,
            children: children,
          ),
        ),
      ),
    );
  }
}
