// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ErrorWrapper _$$_ErrorWrapperFromJson(Map<String, dynamic> json) =>
    _$_ErrorWrapper(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ErrorWrapperToJson(_$_ErrorWrapper instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

_$_ErrorResponse _$$_ErrorResponseFromJson(Map<String, dynamic> json) =>
    _$_ErrorResponse(
      path: json['path'] as String,
      code: json['code'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'path': instance.path,
      'code': instance.code,
      'message': instance.message,
    };
