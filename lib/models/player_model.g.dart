// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlayerModel _$$_PlayerModelFromJson(Map<String, dynamic> json) =>
    _$_PlayerModel(
      get: json['get'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int?,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => PlayerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlayerModelToJson(_$_PlayerModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_PlayerResponse _$$_PlayerResponseFromJson(Map<String, dynamic> json) =>
    _$_PlayerResponse(
      player: json['player'] == null
          ? null
          : Player.fromJson(json['player'] as Map<String, dynamic>),
      statistics: (json['statistics'] as List<dynamic>?)
          ?.map((e) => StatisticType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PlayerResponseToJson(_$_PlayerResponse instance) =>
    <String, dynamic>{
      'player': instance.player,
      'statistics': instance.statistics,
    };

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      id: json['id'] as int?,
      name: json['name'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      age: json['age'] as String?,
      nationality: json['nationality'] as String?,
      injured: json['injured'] as bool?,
      image: json['image'] as String?,
      number: json['number'] as int?,
      pos: json['pos'] as String?,
      grid: json['grid'] as String?,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'team': instance.team,
      'id': instance.id,
      'name': instance.name,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'nationality': instance.nationality,
      'injured': instance.injured,
      'image': instance.image,
      'number': instance.number,
      'pos': instance.pos,
      'grid': instance.grid,
    };
