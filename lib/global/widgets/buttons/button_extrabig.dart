// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class ButtonExtraBig extends StatefulWidget {
  final String title;
  final dynamic action;
  const ButtonExtraBig({
    Key? key,
    required this.title,
    this.action,
  }) : super(key: key);

  @override
  _ButtonExtraBigState createState() => _ButtonExtraBigState();
}

class _ButtonExtraBigState extends State<ButtonExtraBig> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.action,
      child: Container(
        height: size.height * 0.05,
        width:
            Responsive.isDesktop(context) ? size.width * 0.3 : size.width * .6,
        decoration: BoxDecoration(
            color: colorPrincipal, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: styleSecondary(12, Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
