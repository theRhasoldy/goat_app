// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lineup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineupModel _$$_LineupModelFromJson(Map<String, dynamic> json) =>
    _$_LineupModel(
      get: json['get'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int?,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => Lineup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LineupModelToJson(_$_LineupModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_Lineup _$$_LineupFromJson(Map<String, dynamic> json) => _$_Lineup(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      formation: json['formation'] as String?,
      startXI: (json['startXI'] as List<dynamic>?)
          ?.map((e) => Starter.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutes: (json['substitutes'] as List<dynamic>?)
          ?.map((e) => Starter.fromJson(e as Map<String, dynamic>))
          .toList(),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LineupToJson(_$_Lineup instance) => <String, dynamic>{
      'team': instance.team,
      'formation': instance.formation,
      'startXI': instance.startXI,
      'substitutes': instance.substitutes,
      'coach': instance.coach,
    };

_$_Starter _$$_StarterFromJson(Map<String, dynamic> json) => _$_Starter(
      player: json['player'] == null
          ? null
          : Player.fromJson(json['player'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StarterToJson(_$_Starter instance) =>
    <String, dynamic>{
      'player': instance.player,
    };

_$_Coach _$$_CoachFromJson(Map<String, dynamic> json) => _$_Coach(
      id: json['id'] as int?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$_CoachToJson(_$_Coach instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
    };
