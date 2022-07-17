import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/di/di_init.dart';
import 'package:tictactoe/features/common/presentation/blocs/auth_cubit.dart';

import '../../../features/auth/common/auth_constants.dart';
import '../api_constants.dart';

@injectable
class HeaderInterceptor implements Interceptor {
  HeaderInterceptor();

  static const String authHeader = "Authorization";
  static const String bearer = "Bearer ";

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll({"accept": "application/json"});
    if (options.headers.containsKey(ApiConstants.noTokenHeader)) {
      options.headers.remove(ApiConstants.noTokenHeader);
    } else {
      var storage = const FlutterSecureStorage();
      var token = await storage.read(key: AuthConstants.cachedToken);
      if (token?.isEmpty ?? true) return handler.next(options);

      options.headers.addAll({authHeader: bearer + token!});
    }
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    try {
      if (err.requestOptions.headers.containsKey(authHeader)) {
        if (err.response?.statusCode == 401) {
          getIt<AuthCubit>().loggedOut();
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }
}
