import 'package:flutter/material.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget inputTextArea(Size size, String title, BuildContext context,
    TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: styleSecondary(11, colorFont),
      ),
      Container(
        height: size.height * .15,
        width:
            Responsive.isDesktop(context) ? size.width * 0.3 : size.width * .65,
        decoration: BoxDecoration(
            color: colorCard, borderRadius: BorderRadius.circular(5)),
        child: TextField(
          controller: controller,
          minLines: 2,
          maxLines: 8,
          style: styleSecondary(11, colorFont),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '',
              hintStyle: styleSecondary(11, colorFont)),
        ),
      ),
    ],
  );
}
