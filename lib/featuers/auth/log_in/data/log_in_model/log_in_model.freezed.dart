// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInModel _$LogInModelFromJson(Map<String, dynamic> json) {
  return _LogInModel.fromJson(json);
}

/// @nodoc
mixin _$LogInModel {
  Result? get result => throw _privateConstructorUsedError;
  dynamic? get targetUrl => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  dynamic? get error => throw _privateConstructorUsedError;
  bool? get unAuthorizedRequest => throw _privateConstructorUsedError;
  bool? get abp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInModelCopyWith<LogInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInModelCopyWith<$Res> {
  factory $LogInModelCopyWith(
          LogInModel value, $Res Function(LogInModel) then) =
      _$LogInModelCopyWithImpl<$Res, LogInModel>;
  @useResult
  $Res call(
      {Result? result,
      dynamic? targetUrl,
      bool? success,
      dynamic? error,
      bool? unAuthorizedRequest,
      bool? abp});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$LogInModelCopyWithImpl<$Res, $Val extends LogInModel>
    implements $LogInModelCopyWith<$Res> {
  _$LogInModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? targetUrl = freezed,
    Object? success = freezed,
    Object? error = freezed,
    Object? unAuthorizedRequest = freezed,
    Object? abp = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      targetUrl: freezed == targetUrl
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      unAuthorizedRequest: freezed == unAuthorizedRequest
          ? _value.unAuthorizedRequest
          : unAuthorizedRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      abp: freezed == abp
          ? _value.abp
          : abp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogInModelCopyWith<$Res>
    implements $LogInModelCopyWith<$Res> {
  factory _$$_LogInModelCopyWith(
          _$_LogInModel value, $Res Function(_$_LogInModel) then) =
      __$$_LogInModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Result? result,
      dynamic? targetUrl,
      bool? success,
      dynamic? error,
      bool? unAuthorizedRequest,
      bool? abp});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$_LogInModelCopyWithImpl<$Res>
    extends _$LogInModelCopyWithImpl<$Res, _$_LogInModel>
    implements _$$_LogInModelCopyWith<$Res> {
  __$$_LogInModelCopyWithImpl(
      _$_LogInModel _value, $Res Function(_$_LogInModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? targetUrl = freezed,
    Object? success = freezed,
    Object? error = freezed,
    Object? unAuthorizedRequest = freezed,
    Object? abp = freezed,
  }) {
    return _then(_$_LogInModel(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      targetUrl: freezed == targetUrl
          ? _value.targetUrl
          : targetUrl // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic?,
      unAuthorizedRequest: freezed == unAuthorizedRequest
          ? _value.unAuthorizedRequest
          : unAuthorizedRequest // ignore: cast_nullable_to_non_nullable
              as bool?,
      abp: freezed == abp
          ? _value.abp
          : abp // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogInModel implements _LogInModel {
  const _$_LogInModel(
      {this.result,
      this.targetUrl,
      this.success,
      this.error,
      this.unAuthorizedRequest,
      this.abp});

  factory _$_LogInModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogInModelFromJson(json);

  @override
  final Result? result;
  @override
  final dynamic? targetUrl;
  @override
  final bool? success;
  @override
  final dynamic? error;
  @override
  final bool? unAuthorizedRequest;
  @override
  final bool? abp;

  @override
  String toString() {
    return 'LogInModel(result: $result, targetUrl: $targetUrl, success: $success, error: $error, unAuthorizedRequest: $unAuthorizedRequest, abp: $abp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInModel &&
            (identical(other.result, result) || other.result == result) &&
            const DeepCollectionEquality().equals(other.targetUrl, targetUrl) &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.unAuthorizedRequest, unAuthorizedRequest) ||
                other.unAuthorizedRequest == unAuthorizedRequest) &&
            (identical(other.abp, abp) || other.abp == abp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      const DeepCollectionEquality().hash(targetUrl),
      success,
      const DeepCollectionEquality().hash(error),
      unAuthorizedRequest,
      abp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInModelCopyWith<_$_LogInModel> get copyWith =>
      __$$_LogInModelCopyWithImpl<_$_LogInModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInModelToJson(
      this,
    );
  }
}

abstract class _LogInModel implements LogInModel {
  const factory _LogInModel(
      {final Result? result,
      final dynamic? targetUrl,
      final bool? success,
      final dynamic? error,
      final bool? unAuthorizedRequest,
      final bool? abp}) = _$_LogInModel;

  factory _LogInModel.fromJson(Map<String, dynamic> json) =
      _$_LogInModel.fromJson;

  @override
  Result? get result;
  @override
  dynamic? get targetUrl;
  @override
  bool? get success;
  @override
  dynamic? get error;
  @override
  bool? get unAuthorizedRequest;
  @override
  bool? get abp;
  @override
  @JsonKey(ignore: true)
  _$$_LogInModelCopyWith<_$_LogInModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get encryptedAccessToken => throw _privateConstructorUsedError;
  int? get expireInSeconds => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String? accessToken,
      String? encryptedAccessToken,
      int? expireInSeconds,
      int? userId});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? encryptedAccessToken = freezed,
    Object? expireInSeconds = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedAccessToken: freezed == encryptedAccessToken
          ? _value.encryptedAccessToken
          : encryptedAccessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expireInSeconds: freezed == expireInSeconds
          ? _value.expireInSeconds
          : expireInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? accessToken,
      String? encryptedAccessToken,
      int? expireInSeconds,
      int? userId});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? encryptedAccessToken = freezed,
    Object? expireInSeconds = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_Result(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      encryptedAccessToken: freezed == encryptedAccessToken
          ? _value.encryptedAccessToken
          : encryptedAccessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expireInSeconds: freezed == expireInSeconds
          ? _value.expireInSeconds
          : expireInSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {this.accessToken,
      this.encryptedAccessToken,
      this.expireInSeconds,
      this.userId});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? encryptedAccessToken;
  @override
  final int? expireInSeconds;
  @override
  final int? userId;

  @override
  String toString() {
    return 'Result(accessToken: $accessToken, encryptedAccessToken: $encryptedAccessToken, expireInSeconds: $expireInSeconds, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.encryptedAccessToken, encryptedAccessToken) ||
                other.encryptedAccessToken == encryptedAccessToken) &&
            (identical(other.expireInSeconds, expireInSeconds) ||
                other.expireInSeconds == expireInSeconds) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, accessToken, encryptedAccessToken, expireInSeconds, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final String? accessToken,
      final String? encryptedAccessToken,
      final int? expireInSeconds,
      final int? userId}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  String? get accessToken;
  @override
  String? get encryptedAccessToken;
  @override
  int? get expireInSeconds;
  @override
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
