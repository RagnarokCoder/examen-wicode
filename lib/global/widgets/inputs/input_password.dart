// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../styles/colores.dart';
import '../../styles/style_principal.dart';

class CustomInputPassword extends StatefulWidget {
  final String title;
  final IconData icon;
  final TextEditingController controller;

  const CustomInputPassword({
    Key? key,
    required this.title,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  _CustomInputPasswordState createState() => _CustomInputPasswordState();
}

class _CustomInputPasswordState extends State<CustomInputPassword> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
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
                  widget.icon,
                  color: colorFont,
                  size: 15,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: TextField(
                    controller: widget.controller,
                    obscureText: isObscure,
                    style: styleSecondary(11, colorFont),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.title,
                      hintStyle: styleSecondary(11, colorFont),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                          color: colorFont,
                          size: 15,
                        ),
                      ),
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
