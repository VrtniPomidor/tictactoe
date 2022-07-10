import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.httpExternalException({@Default('') String message}) =
      _HttpExternalException;

  const factory Failure.httpUnAuthorizedError() = _HttpUnAuthorizedError;

  const factory Failure.noConnectionFailure() = _NoConnectionFailure;

  const factory Failure.cacheFailure() = _CacheFailure;
}

extension FailureExtension on Failure {
  String get errorMessage => maybeWhen(
      httpExternalException: (message) =>
          message.isEmpty ? 'Something went wrong' : message,
      httpUnAuthorizedError: () => 'Unauthorized',
      noConnectionFailure: () => 'No connection',
      cacheFailure: () => 'Failed cache',
      orElse: () => 'Unknown error');
}
