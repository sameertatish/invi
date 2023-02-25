part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class CheckLogin extends LoginEvent {
  final String userName;
  final String password;

  CheckLogin({required this.userName, required this.password});
}
