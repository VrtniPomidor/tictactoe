// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'players_page_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayersPageWrapper _$$_PlayersPageWrapperFromJson(
        Map<String, dynamic> json) =>
    _$_PlayersPageWrapper(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => PlayerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlayersPageWrapperToJson(
        _$_PlayersPageWrapper instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
