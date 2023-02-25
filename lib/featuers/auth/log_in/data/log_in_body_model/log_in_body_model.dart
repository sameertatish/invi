// To parse this JSON data, do
//
//     final logInBodyModel = logInBodyModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'log_in_body_model.freezed.dart';
part 'log_in_body_model.g.dart';

LogInBodyModel logInBodyModelFromJson(String str) =>
    LogInBodyModel.fromJson(json.decode(str));

String logInBodyModelToJson(LogInBodyModel data) => json.encode(data.toJson());

@freezed
class LogInBodyModel with _$LogInBodyModel {
  const factory LogInBodyModel({
    String? userNameOrEmailAddress,
    String? password,
    bool? rememberClient,
  }) = _LogInBodyModel;

  factory LogInBodyModel.fromJson(Map<String, dynamic> json) =>
      _$LogInBodyModelFromJson(json);
}
