import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget textDetailColorless(
    String title, getText, BuildContext context, Size size) {
  return Container(
    width: Responsive.isDesktop(context) ? size.width * 0.18 : size.width * .65,
    margin: const EdgeInsets.all(4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: styleSecondary(11, colorFont),
        ),
        Text(
          getText,
          style: stylePrincipalBold(12, colorFont),
        ),
      ],
    ),
  );
}
