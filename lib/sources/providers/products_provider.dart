import 'package:examen_tecnico/screens/inventory/vars/controllers.dart';
import 'package:examen_tecnico/sources/data_sources/product_data_source.dart';
import 'package:examen_tecnico/sources/models/inventory.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productProvider = FutureProvider<ProductsPayload>(
  (ref) async {
    final products = ProductDataSource.getProduct();
    return products;
  },
);

final addProductProvider = FutureProvider(
  (ref) async {
    final dataProduct = ref.watch(formProductProvider);
    final sendProduct = ProductDataSource.addProduct(dataProduct);
    return sendProduct;
  },
);

final formProductProvider = StateProvider<ProductModel>((ref) => ProductModel(
    name: int.parse(name.text),
    description: descripcion.text,
    quantity: cantidad.text));
