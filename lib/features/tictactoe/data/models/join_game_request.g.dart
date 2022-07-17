// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_game_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JoinGameRequest _$$_JoinGameRequestFromJson(Map<String, dynamic> json) =>
    _$_JoinGameRequest(
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
    );

Map<String, dynamic> _$$_JoinGameRequestToJson(_$_JoinGameRequest instance) =>
    <String, dynamic>{
      'winner': instance.winner,
      'first_player': instance.firstPlayer,
      'second_player': instance.secondPlayer,
    };
