// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class ButtonSmall extends StatefulWidget {
  final String title;
  final dynamic action;
  final IconData icon;
  const ButtonSmall(
      {Key? key, required this.title, this.action, required this.icon})
      : super(key: key);

  @override
  _ButtonSmallState createState() => _ButtonSmallState();
}

class _ButtonSmallState extends State<ButtonSmall> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.action,
      child: Container(
        height: size.height * 0.04,
        width: Responsive.isDesktop(context)
            ? size.width * 0.06
            : size.width * 0.3,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(14)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.title,
              style: styleSecondary(12, colorFont),
            ),
            const SizedBox(
              width: 5,
            ),
            Icon(
              widget.icon,
              color: colorFont,
              size: 12,
            )
          ],
        ),
      ),
    );
  }
}
