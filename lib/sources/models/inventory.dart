class ProductsPayload {
  final int status;
  final String message;
  final List<ProductModel> payload;

  ProductsPayload({
    required this.status,
    required this.message,
    required this.payload,
  });

  factory ProductsPayload.fromJson(Map<String, dynamic> json) =>
      ProductsPayload(
        status: json["status"],
        message: json["message"],
        payload: List<ProductModel>.from(
            json["payload"].map((x) => ProductModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "payload": List<dynamic>.from(payload.map((x) => x.toJson())),
      };
}

class ProductModel {
  final int name;
  final String description;
  final String quantity;

  String? id;

  ProductModel({
    required this.name,
    required this.description,
    required this.quantity,
    this.id,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        name: json["name"],
        description: json["description"],
        quantity: json['quantity'],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "quantity": quantity,
        "id": id,
      };
}
