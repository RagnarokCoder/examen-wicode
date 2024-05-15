import 'package:examen_tecnico/screens/inventory/components/list_inventory.dart';
import 'package:examen_tecnico/screens/inventory/components/titles.dart';
import 'package:flutter/material.dart';

class InventoryMain extends StatefulWidget {
  final Size size;
  const InventoryMain({super.key, required this.size});

  @override
  State<InventoryMain> createState() => _InventoryMainState();
}

class _InventoryMainState extends State<InventoryMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: widget.size.height,
        width: widget.size.width * .9,
        child: Column(
          children: [
            InventoryTitles(size: size),
            ListInventory(
              size: size,
            )
          ],
        ),
      ),
    );
  }
}
