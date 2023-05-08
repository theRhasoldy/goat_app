// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsModel _$$_StatisticsModelFromJson(Map<String, dynamic> json) =>
    _$_StatisticsModel(
      get: json['get'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int?,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => StatisticsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatisticsModelToJson(_$_StatisticsModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_StatisticsResponse _$$_StatisticsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StatisticsResponse(
      sides: (json['sides'] as List<dynamic>?)
          ?.map((e) => Statistics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatisticsResponseToJson(
        _$_StatisticsResponse instance) =>
    <String, dynamic>{
      'sides': instance.sides,
    };

_$_Statistics _$$_StatisticsFromJson(Map<String, dynamic> json) =>
    _$_Statistics(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>?)
          ?.map((e) => StatisticType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatisticsToJson(_$_Statistics instance) =>
    <String, dynamic>{
      'team': instance.team,
      'stats': instance.stats,
    };

_$_StatisticType _$$_StatisticTypeFromJson(Map<String, dynamic> json) =>
    _$_StatisticType(
      type: json['type'] as String?,
      value: json['value'] as int?,
    );

Map<String, dynamic> _$$_StatisticTypeToJson(_$_StatisticType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };
