import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget inputTextLarge(Size size, String title, BuildContext context,
    TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: styleSecondary(11, colorFont),
      ),
      Container(
        height: size.height * .05,
        width: Responsive.isDesktop(context)
            ? size.width * 0.3
            : size.width * 0.65,
        decoration: BoxDecoration(
            color: colorCard, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            controller: controller,
            style: styleSecondary(11, colorFont),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '',
                hintStyle: styleSecondary(11, colorFont)),
          ),
        ),
      ),
    ],
  );
}
