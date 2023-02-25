import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/featuers/auth/log_in/data/log_in_api.dart';
import 'package:inv_aligner/main.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const Initial()) {
    on<CheckLogin>(_checkLogin);
  }

  void _checkLogin(CheckLogin event, Emitter<LoginState> emit) async {
    try {
      DioLogIn api = DioLogIn();
      emit(const LoginState.loading());
      var res = await api.checkLogIn(event.userName, event.password);

      if (res.result?.accessToken != "") {
        // save token
        sharedFunction.setShared(
            PrefKeys.accessKey, res.result?.accessToken ?? "");
        // save user type
        sharedFunction.setShared(
            PrefKeys.userIdLogin, res.result?.userId?.toString() ?? "");
        emit(const LoginState.checkLoaded());
      } else {
        emit(const LoginState.failure(message: "Error"));
      }
    } catch (e) {
      if (e.toString().contains('false')) {
        emit(LoginState.isNotActiveLoaded(
          userId: e.toString().split(',')[1],
          userName: event.userName,
        ));
      } else {
        emit(LoginState.failure(message: e.toString()));
      }
    }
  }
}
