import 'dart:convert';

GetOptions getOptionsFromJson(String str) =>
    GetOptions.fromJson(json.decode(str));

String getOptionsToJson(GetOptions data) => json.encode(data.toJson());

class GetOptions {
  GetOptions({
    required this.dataResult,
    this.error,
    this.message,
  });

  List<DataResult> dataResult;
  bool? error;
  dynamic message;

  factory GetOptions.fromJson(Map<String, dynamic> json) => GetOptions(
        dataResult: List<DataResult>.from(
            json["dataResult"].map((x) => DataResult.fromJson(x))),
        error: json["error"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "dataResult": List<dynamic>.from(dataResult.map((x) => x.toJson())),
        "error": error,
        "message": message,
      };
}

class DataResult {
  DataResult({
    this.id,
    this.name,
    this.description,
    this.value,
    this.hasStock,
    this.blocked,
    this.imageUrl,
    this.category,
  });

  String? id;
  String? name;
  String? description;
  int? value;
  bool? hasStock;
  bool? blocked;
  String? imageUrl;
  String? category;

  factory DataResult.fromJson(Map<String, dynamic> json) => DataResult(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        value: json["value"],
        hasStock: json["hasStock"],
        blocked: json["blocked"],
        imageUrl: json["imageUrl"],
        category: json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "value": value,
        "hasStock": hasStock,
        "blocked": blocked,
        "imageUrl": imageUrl,
        "category": category,
      };
}
