// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_page_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GamesPageWrapper _$$_GamesPageWrapperFromJson(Map<String, dynamic> json) =>
    _$_GamesPageWrapper(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => GameResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GamesPageWrapperToJson(_$_GamesPageWrapper instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
    };
