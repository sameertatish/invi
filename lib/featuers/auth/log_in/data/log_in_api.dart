import 'package:dio/dio.dart';
import 'package:inv_aligner/core/network/interceptors/header_interceptor.dart';
import 'package:inv_aligner/core/network/interceptors/logger_interceptor.dart';
import 'package:inv_aligner/core/utils/constant.dart';
import 'package:inv_aligner/featuers/auth/log_in/data/log_in_body_model/log_in_body_model.dart';
import 'package:inv_aligner/featuers/auth/log_in/data/log_in_model/log_in_model.dart';
import '../../../../core/network/dio_expception.dart';
import '../../../../core/network/endpoints.dart';

class DioLogIn {
  DioLogIn()
      : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            connectTimeout: Endpoints.connectionTimeout,
            receiveTimeout: Endpoints.receiveTimeout,
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            LoggerInterceptor(),
            CorsInterceptor(),
          ]);

  late final Dio _dio;

  Future<LogInModel> checkLogIn(String userName, String password) async {
    try {
      LogInBodyModel body = LogInBodyModel(
          userNameOrEmailAddress: userName,
          password: password,
          rememberClient: true);
      var res = await _dio.post('api/TokenAuth/Authenticate', data: body);
      return logInModelFromJson(res.toString());
    } on DioError catch (err) {
      String msg = "";
      msg = err.response?.data['message'] ?? "";
      bool? isActive = err.response?.data['is_active'];
      if (isActive != null) {
        if (!isActive) {
          throw "false, ${err.response?.data['id']}";
        }
      }
      String errorMessage = DioException.fromDioError(err).toString();
      throw errorMessage;
    }
  }
}
