import 'package:examen_tecnico/screens/inventory/main/main.dart';
import 'package:flutter/material.dart';

import '../../../global/responsive/responsive.dart';
import '../../../global/styles/colores.dart';
import '../../navigation/navbar.dart';
import '../../navigation/responsive_navbar.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

int globalIndex = 0;

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        bottomNavigationBar: Visibility(
          visible: Responsive.isMobile(context) || Responsive.isTablet(context)
              ? true
              : false,
          child: NavBarResponsive(
            size: size,
            setter: setState,
          ),
        ),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Row(
            children: [
              Visibility(
                visible: Responsive.isDesktop(context) ? true : false,
                child: NavBar(
                  size: size,
                  setter: setState,
                ),
              ),
              Expanded(
                child: IndexedStack(
                  index: globalIndex,
                  children: [
                    const SizedBox(),
                    InventoryMain(
                      size: size,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
