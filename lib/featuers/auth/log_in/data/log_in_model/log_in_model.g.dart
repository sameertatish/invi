// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogInModel _$$_LogInModelFromJson(Map<String, dynamic> json) =>
    _$_LogInModel(
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
      targetUrl: json['targetUrl'],
      success: json['success'] as bool?,
      error: json['error'],
      unAuthorizedRequest: json['unAuthorizedRequest'] as bool?,
      abp: json['abp'] as bool?,
    );

Map<String, dynamic> _$$_LogInModelToJson(_$_LogInModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'targetUrl': instance.targetUrl,
      'success': instance.success,
      'error': instance.error,
      'unAuthorizedRequest': instance.unAuthorizedRequest,
      'abp': instance.abp,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      accessToken: json['accessToken'] as String?,
      encryptedAccessToken: json['encryptedAccessToken'] as String?,
      expireInSeconds: json['expireInSeconds'] as int?,
      userId: json['userId'] as int?,
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
      'encryptedAccessToken': instance.encryptedAccessToken,
      'expireInSeconds': instance.expireInSeconds,
      'userId': instance.userId,
    };
