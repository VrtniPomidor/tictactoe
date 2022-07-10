import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:tictactoe/core/network/api_client.dart';

import '../../network/api_constants.dart';
import '../../network/interceptors/header_interceptor.dart';
import '../di_constants.dart';

@module
abstract class NetworkModule {
  @Named(DiConstants.baseUrlName)
  String get baseUrl => ApiConstants.baseUrl;

  @lazySingleton
  Dio dio(@Named(DiConstants.baseUrlName) String url) => Dio(BaseOptions(
        baseUrl: url,
      ))
        ..interceptors.add(HeaderInterceptor())
        ..interceptors.add(
          DioLoggingInterceptor(
            level: Level.body,
            compact: false,
          ),
        );

  @lazySingleton
  ApiClient apiClient(Dio dio) => ApiClient(dio);
}
