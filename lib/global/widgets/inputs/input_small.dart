import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../responsive/responsive.dart';
import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

Widget inputTextSmallNumber(Size size, String title, IconData icon,
    BuildContext context, TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: styleSecondary(11, colorFont),
      ),
      Container(
        height: size.height * .05,
        width:
            Responsive.isDesktop(context) ? size.width * 0.09 : size.width * .3,
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: colorGrey,
              size: 11,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: TextField(
                  controller: controller,
                  textAlignVertical: TextAlignVertical.top,
                  cursorColor: colorFont,
                  style: styleSecondary(11, colorFont),
                  scrollPadding: EdgeInsets.zero,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                    hintText: '',
                    hintStyle: styleSecondary(11, colorFont),
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(
                        RegExp(r'^\d+\.?\d{0,2}$')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget inputTextSmall(Size size, String title, BuildContext context,
    TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: styleSecondary(11, colorFont),
      ),
      Container(
        height: size.height * .04,
        width:
            Responsive.isDesktop(context) ? size.width * 0.09 : size.width * .3,
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          controller: controller,
          textAlignVertical: TextAlignVertical.top,
          cursorColor: colorFont,
          style: styleSecondary(11, colorFont),
          scrollPadding: EdgeInsets.zero,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: '',
            hintStyle: styleSecondary(11, colorFont),
          ),
        ),
      ),
    ],
  );
}
