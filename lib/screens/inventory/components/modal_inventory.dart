// ignore_for_file: library_private_types_in_public_api

import 'package:examen_tecnico/global/widgets/buttons/button_big.dart';
import 'package:examen_tecnico/global/widgets/inputs/input_area.dart';
import 'package:examen_tecnico/global/widgets/inputs/input_large.dart';
import 'package:examen_tecnico/sources/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';
import 'package:status_alert/status_alert.dart';

import '../../../global/styles/colores.dart';
import '../vars/controllers.dart';

class ModalInventory extends ConsumerStatefulWidget {
  final Size size;
  const ModalInventory({super.key, required this.size});

  @override
  _ModalInventoryState createState() => _ModalInventoryState();
}

bool isLoadingProduct = false;

class _ModalInventoryState extends ConsumerState<ModalInventory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.size.height * .4,
      width: widget.size.width * .1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          inputTextLarge(widget.size, "Nombre", context, name),
          inputTextArea(widget.size, "Descripción", context, descripcion),
          inputTextLarge(widget.size, "Cantidad", context, cantidad),
          isLoadingProduct == true
              ? Center(
                  child: CircularProgressIndicator(
                  color: colorblue,
                  backgroundColor: colorCard,
                  strokeWidth: 2,
                ))
              : ButtonBig(
                  action: () {
                    uploadProduct();
                  },
                  title: "Guardar",
                  icon: LineIcons.save)
        ],
      ),
    );
  }

  uploadProduct() {
    if (name.text.isEmpty ||
        descripcion.text.isEmpty ||
        cantidad.text.isEmpty) {
      StatusAlert.show(
        context,
        backgroundColor: colorCard,
        duration: const Duration(seconds: 2),
        title: 'Campos Vacios',
        subtitle: 'Asegurate de haber llenado todos los campos.',
        configuration: IconConfiguration(
            icon: LineIcons.infoCircle, color: color3, size: 35),
        maxWidth: 290,
      );
    } else {
      setState(() {
        isLoadingProduct = true;
      });
      setState(() {
        ref.read(addProductProvider);
      });

      Future.delayed(const Duration(seconds: 2)).then((value) => {
            setState(() {
              isLoadingProduct = false;
              ref.invalidate(productProvider);
              name.clear();
              descripcion.clear();
              cantidad.clear();
              Navigator.of(context).pop();
            })
          });
    }
  }
}
