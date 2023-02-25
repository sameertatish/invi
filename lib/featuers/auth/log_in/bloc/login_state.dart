part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.checkLoaded() = CheckLoaded;

  const factory LoginState.isNotActiveLoaded({
    required String userId,
    required String userName,
  }) = IsNotActiveLoaded;

  const factory LoginState.loading() = Loading;

  const factory LoginState.failure({
    required String message,
  }) = Failure;

  const factory LoginState.init() = Initial;
}
