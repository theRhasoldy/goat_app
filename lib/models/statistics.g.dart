// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FixtureStatistics _$$_FixtureStatisticsFromJson(Map<String, dynamic> json) =>
    _$_FixtureStatistics(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      statistics: (json['statistics'] as List<dynamic>)
          .map((e) => Statistic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FixtureStatisticsToJson(
        _$_FixtureStatistics instance) =>
    <String, dynamic>{
      'team': instance.team,
      'statistics': instance.statistics,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

_$_Statistic _$$_StatisticFromJson(Map<String, dynamic> json) => _$_Statistic(
      type: json['type'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$_StatisticToJson(_$_Statistic instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
