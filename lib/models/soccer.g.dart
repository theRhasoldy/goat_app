// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'soccer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      leagueID: json['leagueID'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      code: json['code'] as String,
      season: json['season'] as int,
      teamID: json['teamID'] as int,
      type: json['type'] as String,
      current: json['current'] as String,
      search: json['search'] as String,
      last: json['last'] as int,
      age: json['age'] as int,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'leagueID': instance.leagueID,
      'name': instance.name,
      'country': instance.country,
      'code': instance.code,
      'season': instance.season,
      'teamID': instance.teamID,
      'type': instance.type,
      'current': instance.current,
      'search': instance.search,
      'last': instance.last,
      'age': instance.age,
    };
