import 'package:examen_tecnico/global/styles/colores.dart';
import 'package:examen_tecnico/global/styles/style_principal.dart';
import 'package:examen_tecnico/global/vars/vars.dart';
import 'package:flutter/material.dart';

class InventoryCard extends StatefulWidget {
  final Size size;
  final Map<dynamic, dynamic> product;
  const InventoryCard({super.key, required this.size, required this.product});

  @override
  State<InventoryCard> createState() => _InventoryCardState();
}

class _InventoryCardState extends State<InventoryCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .08,
      width: widget.size.width * .9,
      decoration: BoxDecoration(
          color: colorCard, borderRadius: BorderRadius.circular(14)),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.product['name'],
            style: styleSecondary(12, colorFont),
          ),
          SizedBox(
            width: widget.size.width * .25,
            child: Text(
              widget.product['description'],
              textAlign: TextAlign.center,
              style: styleSecondary(12, colorFont),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            f.format(widget.product['quantity']),
            style: stylePrincipalBold(13, colorFont),
          ),
        ],
      ),
    );
  }
}
