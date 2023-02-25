import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'app_cubit.freezed.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.init());

  Future<void> checkAuth() async {
    try {
      emit(const AppState.appLoading());
      final pref = await SharedPreferences.getInstance();
      var res = pref.getString(PrefKeys.accessKey);
      final logged = res != null && res.isNotEmpty;
      if (logged) {
        emit(const AppState.authenticated());
      } else {
        emit(const AppState.unAuthenticated());
      }
    } on Exception catch (e) {
      emit(AppState.failure(message: e.toString()));
    }
  }
}
