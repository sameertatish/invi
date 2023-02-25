// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_in_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogInBodyModel _$$_LogInBodyModelFromJson(Map<String, dynamic> json) =>
    _$_LogInBodyModel(
      userNameOrEmailAddress: json['userNameOrEmailAddress'] as String?,
      password: json['password'] as String?,
      rememberClient: json['rememberClient'] as bool?,
    );

Map<String, dynamic> _$$_LogInBodyModelToJson(_$_LogInBodyModel instance) =>
    <String, dynamic>{
      'userNameOrEmailAddress': instance.userNameOrEmailAddress,
      'password': instance.password,
      'rememberClient': instance.rememberClient,
    };
