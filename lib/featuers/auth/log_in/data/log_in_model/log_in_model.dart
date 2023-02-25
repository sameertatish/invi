// To parse this JSON data, do
//
//     final logInModel = logInModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'log_in_model.freezed.dart';
part 'log_in_model.g.dart';

LogInModel logInModelFromJson(String str) =>
    LogInModel.fromJson(json.decode(str));

String logInModelToJson(LogInModel data) => json.encode(data.toJson());

@freezed
class LogInModel with _$LogInModel {
  const factory LogInModel({
    Result? result,
    dynamic? targetUrl,
    bool? success,
    dynamic? error,
    bool? unAuthorizedRequest,
    bool? abp,
  }) = _LogInModel;

  factory LogInModel.fromJson(Map<String, dynamic> json) =>
      _$LogInModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    String? accessToken,
    String? encryptedAccessToken,
    int? expireInSeconds,
    int? userId,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
