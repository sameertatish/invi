// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'log_in_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInBodyModel _$LogInBodyModelFromJson(Map<String, dynamic> json) {
  return _LogInBodyModel.fromJson(json);
}

/// @nodoc
mixin _$LogInBodyModel {
  String? get userNameOrEmailAddress => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  bool? get rememberClient => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInBodyModelCopyWith<LogInBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInBodyModelCopyWith<$Res> {
  factory $LogInBodyModelCopyWith(
          LogInBodyModel value, $Res Function(LogInBodyModel) then) =
      _$LogInBodyModelCopyWithImpl<$Res, LogInBodyModel>;
  @useResult
  $Res call(
      {String? userNameOrEmailAddress, String? password, bool? rememberClient});
}

/// @nodoc
class _$LogInBodyModelCopyWithImpl<$Res, $Val extends LogInBodyModel>
    implements $LogInBodyModelCopyWith<$Res> {
  _$LogInBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameOrEmailAddress = freezed,
    Object? password = freezed,
    Object? rememberClient = freezed,
  }) {
    return _then(_value.copyWith(
      userNameOrEmailAddress: freezed == userNameOrEmailAddress
          ? _value.userNameOrEmailAddress
          : userNameOrEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberClient: freezed == rememberClient
          ? _value.rememberClient
          : rememberClient // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogInBodyModelCopyWith<$Res>
    implements $LogInBodyModelCopyWith<$Res> {
  factory _$$_LogInBodyModelCopyWith(
          _$_LogInBodyModel value, $Res Function(_$_LogInBodyModel) then) =
      __$$_LogInBodyModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userNameOrEmailAddress, String? password, bool? rememberClient});
}

/// @nodoc
class __$$_LogInBodyModelCopyWithImpl<$Res>
    extends _$LogInBodyModelCopyWithImpl<$Res, _$_LogInBodyModel>
    implements _$$_LogInBodyModelCopyWith<$Res> {
  __$$_LogInBodyModelCopyWithImpl(
      _$_LogInBodyModel _value, $Res Function(_$_LogInBodyModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userNameOrEmailAddress = freezed,
    Object? password = freezed,
    Object? rememberClient = freezed,
  }) {
    return _then(_$_LogInBodyModel(
      userNameOrEmailAddress: freezed == userNameOrEmailAddress
          ? _value.userNameOrEmailAddress
          : userNameOrEmailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      rememberClient: freezed == rememberClient
          ? _value.rememberClient
          : rememberClient // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogInBodyModel implements _LogInBodyModel {
  const _$_LogInBodyModel(
      {this.userNameOrEmailAddress, this.password, this.rememberClient});

  factory _$_LogInBodyModel.fromJson(Map<String, dynamic> json) =>
      _$$_LogInBodyModelFromJson(json);

  @override
  final String? userNameOrEmailAddress;
  @override
  final String? password;
  @override
  final bool? rememberClient;

  @override
  String toString() {
    return 'LogInBodyModel(userNameOrEmailAddress: $userNameOrEmailAddress, password: $password, rememberClient: $rememberClient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInBodyModel &&
            (identical(other.userNameOrEmailAddress, userNameOrEmailAddress) ||
                other.userNameOrEmailAddress == userNameOrEmailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberClient, rememberClient) ||
                other.rememberClient == rememberClient));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, userNameOrEmailAddress, password, rememberClient);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInBodyModelCopyWith<_$_LogInBodyModel> get copyWith =>
      __$$_LogInBodyModelCopyWithImpl<_$_LogInBodyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInBodyModelToJson(
      this,
    );
  }
}

abstract class _LogInBodyModel implements LogInBodyModel {
  const factory _LogInBodyModel(
      {final String? userNameOrEmailAddress,
      final String? password,
      final bool? rememberClient}) = _$_LogInBodyModel;

  factory _LogInBodyModel.fromJson(Map<String, dynamic> json) =
      _$_LogInBodyModel.fromJson;

  @override
  String? get userNameOrEmailAddress;
  @override
  String? get password;
  @override
  bool? get rememberClient;
  @override
  @JsonKey(ignore: true)
  _$$_LogInBodyModelCopyWith<_$_LogInBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
