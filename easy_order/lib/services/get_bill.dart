import 'dart:convert';

GetBill getBillFromJson(String str) => GetBill.fromJson(json.decode(str));

String getBillToJson(GetBill data) => json.encode(data.toJson());

class GetBill {
  GetBill({
    required this.dataResult,
    this.error,
    this.message,
  });

  List<DataResult> dataResult;
  bool? error;
  dynamic message;

  factory GetBill.fromJson(Map<String, dynamic> json) => GetBill(
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
