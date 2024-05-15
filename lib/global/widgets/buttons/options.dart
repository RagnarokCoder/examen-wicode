import 'package:flutter/material.dart';

import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget buttonOptions(
    Size size, StateSetter setter, bool isSelect, String title, counterTitle) {
  return SizedBox(
    height: size.height * 0.03,
    child: Row(
      children: [
        InkWell(
          onTap: () {
            setter(() {
              isSelect = true;
            });
          },
          child: Container(
            width: size.width * 0.05,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    topLeft: Radius.circular(50)),
                color: isSelect == true ? colorPrincipal : colorWhiteN),
            child: Center(
              child: Text(
                title,
                style: styleSecondary(
                    12, isSelect == true ? colorWhiteN : colorFont),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            setter(() {
              isSelect = false;
            });
          },
          child: Container(
            width: size.width * 0.05,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: isSelect == false ? colorPrincipal : colorWhiteN),
            child: Center(
              child: Text(
                counterTitle,
                style: styleSecondary(
                    12, isSelect == false ? colorWhiteN : colorFont),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
