import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:tictactoe/core/error/exceptions.dart';

import 'error_response.dart';

extension ErrorParser on DioError {
  ServerException parseError() {
    try {
      if (response != null) {
        final ErrorWrapper error = ErrorWrapper.fromJson(response!.data);
        debugPrint(error.toString());
        return ServerException(message: error.errors[0].message);
      }
    } catch (_) {}
    return ServerException();
  }
}
