// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import '../models/inventory.dart';
import '../utils/enviroments.dart';

class ProductDataSource {
  static String movement = Enviroment.serviceMovement;
  static String baseUrl = Enviroment.baseUrl;

  static Future<ProductsPayload> getProduct() async {
    try {
      final response = await Dio().get(
        'https://app-l4u52xuudq-uc.a.run.app/product/',
      );
      if (response.data != null) {
        final product = ProductsPayload.fromJson(response.data);
        return product;
      } else {
        print('La respuesta no contiene datos.');
        throw Exception('La respuesta no contiene datos.');
      }
    } catch (error) {
      print('Error al realizar la solicitud: $error');
      rethrow;
    }
  }

  static Future<ProductsPayload> addProduct(ProductModel data) async {
    try {
      Map<String, dynamic> dataGet = {
        "name": data.name,
        "description": data.description,
        "quantity": data.quantity,
      };

      final response = await Dio().post(
        'https://app-l4u52xuudq-uc.a.run.app',
        data: dataGet,
      );
      if (response.data != null) {
        final product = ProductsPayload.fromJson(response.data);
        return product;
      } else {
        print('La respuesta no contiene datos.');
        throw Exception('La respuesta no contiene datos.');
      }
    } catch (error) {
      print('Error al realizar la solicitud: $error');
      rethrow;
    }
  }
}
