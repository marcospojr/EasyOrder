import 'dart:convert';

PostBill postBillFromJson(String str) => PostBill.fromJson(json.decode(str));

String postBillToJson(PostBill data) => json.encode(data.toJson());

class PostBill {
  PostBill({
    required this.dataResult,
    this.error,
    this.message,
  });

  List<DataResult> dataResult;
  bool? error;
  dynamic message;

  factory PostBill.fromJson(Map<String, dynamic> json) => PostBill(
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
    this.deviceId,
    this.status,
  });

  String? id;
  String? deviceId;
  String? status;

  factory DataResult.fromJson(Map<String, dynamic> json) => DataResult(
        id: json["id"],
        deviceId: json["name"],
        status: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "deviceId": deviceId,
        "status": status,
      };
}
