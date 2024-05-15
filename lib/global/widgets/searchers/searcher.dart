// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class Sercher extends StatefulWidget {
  final Size size;
  final dynamic action;
  final TextEditingController controller;
  final String title;
  const Sercher(
      {Key? key,
      required this.size,
      required this.action,
      required this.controller,
      required this.title})
      : super(key: key);

  @override
  _SercherState createState() => _SercherState();
}

class _SercherState extends State<Sercher> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? widget.size.width * .3
          : widget.size.width * .65,
      height: widget.size.height * .04,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Center(
            child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? widget.size.width * .28
                  : widget.size.width * .5,
              height: widget.size.height * .04,
              child: TextField(
                style: styleSecondary(12, colorFont),
                onChanged: widget.action,
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: 'Buscar por ${widget.title}',
                  hintStyle: styleSecondary(
                      12, colorFont), // Set hint text color to gray
                  border: InputBorder.none, // Remove the border
                  contentPadding: const EdgeInsets.only(
                      bottom: 20, left: 20), // Adjust content padding if needed
                ),
              ),
            ),
          ),
          const Spacer(),
          Icon(
            LineIcons.search,
            color: colorFont,
            size: 12,
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}

class SercherCharts extends StatefulWidget {
  final Size size;
  final dynamic action;
  final TextEditingController controller;
  final String title;
  const SercherCharts(
      {Key? key,
      required this.size,
      required this.action,
      required this.controller,
      required this.title})
      : super(key: key);

  @override
  _SercherChartsState createState() => _SercherChartsState();
}

class _SercherChartsState extends State<SercherCharts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)
          ? widget.size.width * .2
          : widget.size.width * .65,
      height: widget.size.height * .04,
      decoration: BoxDecoration(
          color: colorCard, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Center(
            child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? widget.size.width * .15
                  : widget.size.width * .5,
              height: widget.size.height * .04,
              child: TextField(
                style: styleSecondary(12, colorFont),
                onChanged: widget.action,
                controller: widget.controller,
                decoration: InputDecoration(
                  hintText: 'Buscar por ${widget.title}',
                  hintStyle: styleSecondary(
                      12, colorFont), // Set hint text color to gray
                  border: InputBorder.none, // Remove the border
                  contentPadding: const EdgeInsets.only(
                      bottom: 20, left: 20), // Adjust content padding if needed
                ),
              ),
            ),
          ),
          const Spacer(),
          Icon(
            LineIcons.search,
            color: colorFont,
            size: 12,
          ),
          const SizedBox(
            width: 5,
          )
        ],
      ),
    );
  }
}
