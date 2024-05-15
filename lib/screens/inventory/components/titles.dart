import 'package:examen_tecnico/global/styles/colores.dart';
import 'package:examen_tecnico/global/styles/style_principal.dart';
import 'package:examen_tecnico/global/widgets/buttons/icon_button.dart';
import 'package:examen_tecnico/screens/inventory/components/modal_inventory.dart';
import 'package:flutter/material.dart';

class InventoryTitles extends StatefulWidget {
  final Size size;
  const InventoryTitles({super.key, required this.size});

  @override
  State<InventoryTitles> createState() => _InventoryTitlesState();
}

class _InventoryTitlesState extends State<InventoryTitles> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .1,
      width: widget.size.width,
      color: colorwhite,
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Inventario",
            style: stylePrincipalBold(15, Colors.black),
          ),
          IconButtonSmall(
              action: () {
                showModalInventory(context, widget.size);
              },
              icon: Icons.add,
              color: colorblue,
              iconColor: Colors.white)
        ],
      ),
    );
  }

  void showModalInventory(BuildContext context, Size size) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ModalInventory(size: size),
        );
      },
    );
  }
}
