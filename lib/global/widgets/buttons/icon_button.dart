// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';

class IconButtonSmall extends StatefulWidget {
  final dynamic action;
  final IconData icon;
  final Color color;
  final Color iconColor;
  const IconButtonSmall(
      {Key? key,
      this.action,
      required this.icon,
      required this.color,
      required this.iconColor})
      : super(key: key);

  @override
  _IconButtonSmallState createState() => _IconButtonSmallState();
}

class _IconButtonSmallState extends State<IconButtonSmall> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.action,
      child: Container(
          height: size.height * 0.045,
          width: Responsive.isTablet(context)
              ? size.width * .13
              : size.width * .12,
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Icon(
              widget.icon,
              size: 20,
              color: widget.iconColor,
            ),
          )),
    );
  }
}
