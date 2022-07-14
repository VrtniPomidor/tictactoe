// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerResponse _$$_PlayerResponseFromJson(Map<String, dynamic> json) =>
    _$_PlayerResponse(
      id: json['id'] as int,
      username: json['username'] as String,
      gameCount: json['game_count'] as int? ?? 0,
      winRate: (json['win_rate'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$_PlayerResponseToJson(_$_PlayerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'game_count': instance.gameCount,
      'win_rate': instance.winRate,
    };
