import 'package:flutter/material.dart';

import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class CustomInputUser extends StatelessWidget {
  final String title;
  final IconData icon;
  final TextEditingController controller;

  const CustomInputUser({
    Key? key,
    required this.title,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: styleSecondary(11, colorFont),
        ),
        const SizedBox(height: 8),
        Container(
          height: 35,
          decoration: BoxDecoration(
            color: colorCard,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Icon(
                  icon,
                  color: colorFont,
                  size: 15,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: TextField(
                    controller: controller,
                    style: styleSecondary(11, colorFont),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: title,
                      hintStyle: styleSecondary(11, colorFont),
                    ),
                    textInputAction: TextInputAction.next,
                    autofocus: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
