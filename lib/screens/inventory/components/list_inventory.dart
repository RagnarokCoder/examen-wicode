// ignore_for_file: library_private_types_in_public_api

import 'package:examen_tecnico/global/styles/colores.dart';
import 'package:examen_tecnico/screens/inventory/components/card_inventory.dart';
import 'package:examen_tecnico/sources/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../global/responsive/responsive.dart';
import '../../../global/styles/style_principal.dart';

class ListInventory extends ConsumerStatefulWidget {
  final Size size;
  const ListInventory({super.key, required this.size});

  @override
  _ListInventoryState createState() => _ListInventoryState();
}

class _ListInventoryState extends ConsumerState<ListInventory> {
  @override
  Widget build(BuildContext context) {
    var productosProvider = ref.watch(productProvider);
    Size size = MediaQuery.of(context).size;
    return Container(
      height: widget.size.height * 9,
      width: widget.size.width,
      color: colorwhite,
      child: Column(
        children: [
          Visibility(
            visible: Responsive.isDesktop(context) ? true : false,
            child: Container(
              height: size.height * 0.05,
              width:
                  Responsive.isDesktop(context) ? size.width * .9 : size.width,
              margin: Responsive.isDesktop(context)
                  ? const EdgeInsets.only(left: 45)
                  : const EdgeInsets.all(0),
              decoration: BoxDecoration(
                  color: colorCard, borderRadius: BorderRadius.circular(14)),
              child: Row(
                mainAxisAlignment: Responsive.isDesktop(context)
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width * .06
                        : size.width * .1,
                    height: size.height * .06,
                    child: Center(
                      child: Text(
                        "Nombre",
                        style: stylePrincipalBold(11, colorBlack),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: Responsive.isDesktop(context)
                          ? size.width * .06
                          : size.width * .1,
                      height: size.height * .06,
                      child: Center(
                        child: Text(
                          "Descripción",
                          style: stylePrincipalBold(11, colorBlack),
                        ),
                      )),
                  SizedBox(
                      width: Responsive.isDesktop(context)
                          ? size.width * .08
                          : size.width * .16,
                      height: size.height * .06,
                      child: Center(
                        child: Text(
                          "Cantidad",
                          overflow: TextOverflow.ellipsis,
                          style: stylePrincipalBold(11, colorBlack),
                        ),
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context)
                ? widget.size.height * .68
                : widget.size.height * 0.69,
            width: Responsive.isDesktop(context)
                ? widget.size.width * .3
                : widget.size.width,
            child: productosProvider.when(
                data: (productos) {
                  var filteredProductos = productos.payload.toList();
                  return ListView.builder(
                    itemCount: filteredProductos.length,
                    itemBuilder: (context, index) {
                      final producto = filteredProductos[index];
                      return InventoryCard(
                        size: size,
                        product: producto.toJson(),
                      );
                    },
                  );
                },
                error: (_, __) => Center(
                      child: Text(
                        'No fue posible cargar los movimientos',
                        style: styleSecondary(13, colorFont),
                      ),
                    ),
                loading: () => Center(
                        child: CircularProgressIndicator(
                      color: colorblue,
                      backgroundColor: colorCard,
                      strokeWidth: 2,
                    ))),
          )
        ],
      ),
    );
  }
}
