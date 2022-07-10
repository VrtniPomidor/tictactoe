import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../features/login/common/login_constants.dart';
import '../api_constants.dart';

@injectable
class HeaderInterceptor implements Interceptor {
  HeaderInterceptor();

  static const String authHeader = "Authorization";
  static const String bearer = "Bearer ";

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (options.headers.containsKey(ApiConstants.noTokenHeader)) {
      options.headers.remove(ApiConstants.noTokenHeader);

      var storage = const FlutterSecureStorage();
      var token = await storage.read(key: LoginConstants.cachedToken);
      if (token?.isEmpty ?? true) handler.next(options);

      options.headers.addAll({authHeader: bearer + token!});
    }
    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {}

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {}
}
