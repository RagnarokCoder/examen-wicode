// ignore_for_file: library_private_types_in_public_api, avoid_web_libraries_in_flutter

import 'package:examen_tecnico/screens/home/main/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../global/responsive/responsive.dart';
import '../../global/styles/colores.dart';
import '../../global/styles/style_principal.dart';

class NavBar extends StatefulWidget {
  final Size size;
  final StateSetter setter;
  const NavBar({Key? key, required this.size, required this.setter})
      : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height,
      width: widget.size.width * .15,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: colorblue,
      ),
      child: Column(
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "lib/assets/logowic.png",
            width: 120,
          ),
          SizedBox(
            height: widget.size.height * .8,
            width: widget.size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                menuItem(0, "Dashboard", LineIcons.pieChart),
                menuItem(1, "Inventario", LineIcons.boxes),
                const Spacer(),
                //cerrarSesion(widget.size),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "V 1.0.0",
                  style: styleSecondary(8, Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget cerrarSesion(Size size) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: size.height * .12,
      width: size.width * .15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("lib/assets/logonn.png"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "",
                    style: stylePrincipalBold(13, Colors.white),
                  ),
                  Text(
                    "Admin",
                    style: styleSecondary(9, Colors.white),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton.icon(
              onPressed: () {
                cerrarSesionpop(context);
              },
              icon: const Icon(
                LineIcons.alternateSignOut,
                size: 15,
                color: Colors.white,
              ),
              label: Text(
                "Cerrar Sesión",
                style: styleSecondary(11, Colors.white),
              ))
        ],
      ),
    );
  }

  void cerrarSesionpop(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(
          '¿Desea cerrar sesión?',
          style: stylePrincipalBold(14, colorFont),
        ),
        content: Text(
          'Continuar',
          style: styleSecondary(11, colorBlack),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancelar',
              style: styleSecondary(12, colorFont),
            ),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Aceptar',
              style: styleSecondary(12, colorPrincipal),
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(int index, String title, IconData icon) {
    return InkWell(
      onTap: () {
        widget.setter(() {
          globalIndex = index;
        });
      },
      child: Container(
        height: widget.size.height * 0.05,
        width: widget.size.width * .15,
        color: index != globalIndex
            ? Colors.transparent
            : Colors.grey.withOpacity(0.2),
        margin: const EdgeInsets.only(
          top: 4,
        ),
        child: Row(
          mainAxisAlignment: Responsive.isDesktop(context)
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            Visibility(
                visible: index != globalIndex ? false : true,
                child: Container(
                  height: widget.size.height * 0.03,
                  width: widget.size.width * 0.0015,
                  color: colorFont,
                )),
            const SizedBox(width: 3),
            Icon(
              icon,
              color: index != globalIndex ? Colors.white : Colors.white,
              size: 15,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ? 5 : 0,
            ),
            Visibility(
              visible: Responsive.isDesktop(context) ? true : false,
              child: Text(
                title,
                style: styleSecondary(
                    15, index != globalIndex ? Colors.white : Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
