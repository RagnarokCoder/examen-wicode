// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class ButtonBig extends StatefulWidget {
  final String title;
  final dynamic action;
  final IconData icon;
  const ButtonBig(
      {Key? key, required this.title, this.action, required this.icon})
      : super(key: key);

  @override
  _ButtonBigState createState() => _ButtonBigState();
}

class _ButtonBigState extends State<ButtonBig> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.action,
      child: Container(
        height: size.height * 0.04,
        width:
            Responsive.isDesktop(context) ? size.width * 0.11 : size.width * .4,
        decoration: BoxDecoration(
            color: colorblue, borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: styleSecondary(12, Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              widget.icon,
              color: Colors.white,
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
