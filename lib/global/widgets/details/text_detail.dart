import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget textDetail(String title, getText, BuildContext context, Size size) {
  return Container(
    width: Responsive.isDesktop(context) ? size.width * 0.18 : size.width * .9,
    margin: const EdgeInsets.all(4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: styleSecondary(11, colorFont),
        ),
        Container(
          height: size.height * 0.04,
          width: Responsive.isDesktop(context)
              ? size.width * 0.09
              : size.width * .5,
          decoration: BoxDecoration(
              color: colorCard, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              getText,
              style: styleSecondary(11, colorFont),
            ),
          ),
        )
      ],
    ),
  );
}
