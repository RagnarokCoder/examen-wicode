import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String get baseUrl {
    final baseUrl = dotenv.env['URL_SERVICES'];
    if (baseUrl!.isEmpty) {
      throw Exception('Could not get URL_SERVICES');
    }
    return baseUrl;
  }

  static String get serviceMovement {
    final serviceMovement = dotenv.env['SERVICE_MOVEMENT'];
    if (serviceMovement!.isEmpty) {
      throw Exception('Could not get SERVICE_MOVEMENT');
    }
    return serviceMovement;
  }
}
