// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../global/responsive/responsive.dart';
import '../../global/styles/colores.dart';
import '../../global/styles/style_principal.dart';

class NavBarResponsive extends StatefulWidget {
  final Size size;
  final StateSetter setter;
  const NavBarResponsive({Key? key, required this.size, required this.setter})
      : super(key: key);

  @override
  _NavBarResponsiveState createState() => _NavBarResponsiveState();
}

class _NavBarResponsiveState extends State<NavBarResponsive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .08,
      width: widget.size.width,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: colorPrincipal,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25))),
      child: Column(
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: widget.size.height * .08,
            width: widget.size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                menuItem(0, "Dashboard", LineIcons.lineChart),
                menuItem(1, "Inventario", LineIcons.boxes),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget menuItem(int index, String title, IconData icon) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: widget.size.height * 0.05,
        width: widget.size.width * .1,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              index != 1 ? Colors.transparent : Colors.white.withOpacity(0.2),
        ),
        margin: const EdgeInsets.only(
          top: 4,
        ),
        child: Row(
          mainAxisAlignment: Responsive.isDesktop(context)
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: index != 1 ? Colors.white : colorFont,
              size: 20,
            ),
            Visibility(
              visible: Responsive.isDesktop(context) ? true : false,
              child: Text(
                title,
                style:
                    styleSecondary(15, index != 1 ? Colors.white : colorFont),
              ),
            )
          ],
        ),
      ),
    );
  }
}
