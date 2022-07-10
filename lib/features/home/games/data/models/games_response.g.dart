// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GameResponse _$$_GameResponseFromJson(Map<String, dynamic> json) =>
    _$_GameResponse(
      id: json['id'] as int,
      winner: json['winner'] == null
          ? null
          : PlayerResponse.fromJson(json['winner'] as Map<String, dynamic>),
      firstPlayer: json['first_player'] == null
          ? null
          : PlayerResponse.fromJson(
              json['first_player'] as Map<String, dynamic>),
      secondPlayer: json['second_player'] == null
          ? null
          : PlayerResponse.fromJson(
              json['second_player'] as Map<String, dynamic>),
      created: DateTime.parse(json['created'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_GameResponseToJson(_$_GameResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'winner': instance.winner,
      'first_player': instance.firstPlayer,
      'second_player': instance.secondPlayer,
      'created': instance.created.toIso8601String(),
      'status': instance.status,
    };
