// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../responsive/responsive.dart';
import '../../styles/style_principal.dart';

class ButtonSmallIcon extends StatefulWidget {
  final String title;
  final Color color;
  final dynamic action;
  final Color textColor;
  const ButtonSmallIcon({
    Key? key,
    required this.title,
    this.action,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  _ButtonSmallIconState createState() => _ButtonSmallIconState();
}

class _ButtonSmallIconState extends State<ButtonSmallIcon> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.action,
      child: Container(
          height: size.height * 0.04,
          width: Responsive.isDesktop(context)
              ? size.width * 0.04
              : size.width * 0.25,
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(5)),
          child: Center(
            child: Text(
              widget.title,
              style: styleSecondary(12, widget.textColor),
            ),
          )),
    );
  }
}
