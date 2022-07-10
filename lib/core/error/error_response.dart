import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

@freezed
class ErrorWrapper with _$ErrorWrapper {
  factory ErrorWrapper({
    required List<ErrorResponse> errors,
  }) = _ErrorWrapper;

  factory ErrorWrapper.fromJson(Map<String, dynamic> json) =>
      _$ErrorWrapperFromJson(json);
}

@freezed
class ErrorResponse with _$ErrorResponse {
  factory ErrorResponse({
    required String path,
    required String code,
    required String message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
