import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.httpExternalException() = _HttpExternalException;

  const factory Failure.httpUnAuthorizedError() = _HttpUnAuthorizedError;

  const factory Failure.noConnectionFailure() = _NoConnectionFailure;

  const factory Failure.cacheFailure() = _CacheFailure;
}
