import 'dart:convert';

PrimaryModel primaryModelFromJson(String str) =>
    PrimaryModel.fromJson(json.decode(str));

String primaryModelToJson(PrimaryModel data) => json.encode(data.toJson());

class PrimaryModel {
  PrimaryModel({
    this.status,
    this.code,
    this.message,
    this.exist,
  });

  String? status;
  int? code;
  String? message;
  dynamic exist;

  factory PrimaryModel.fromJson(Map<String, dynamic> json) => PrimaryModel(
        status: json["status"],
        code: json["code"],
        message: json["message"],
        exist: json["exist"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "code": code,
        "message": message,
        "exist": exist,
      };
}
