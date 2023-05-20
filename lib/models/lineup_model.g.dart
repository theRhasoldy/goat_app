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
      response: (json['response'] as List<dynamic>)
          .map((e) => LineupResponse.fromJson(e as Map<String, dynamic>))
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

_$_LineupResponse _$$_LineupResponseFromJson(Map<String, dynamic> json) =>
    _$_LineupResponse(
      homeLineup: json['homeLineup'] == null
          ? null
          : Lineup.fromJson(json['homeLineup'] as Map<String, dynamic>),
      awayLineup: json['awayLineup'] == null
          ? null
          : Lineup.fromJson(json['awayLineup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LineupResponseToJson(_$_LineupResponse instance) =>
    <String, dynamic>{
      'homeLineup': instance.homeLineup,
      'awayLineup': instance.awayLineup,
    };

_$_Lineup _$$_LineupFromJson(Map<String, dynamic> json) => _$_Lineup(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      formation: json['formation'] as String?,
      startXI: (json['startXI'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutes: (json['substitutes'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
      coach: (json['coach'] as List<dynamic>)
          .map((e) => Player.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LineupToJson(_$_Lineup instance) => <String, dynamic>{
      'team': instance.team,
      'formation': instance.formation,
      'startXI': instance.startXI,
      'substitutes': instance.substitutes,
      'coach': instance.coach,
    };
