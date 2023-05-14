// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'headtohead_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HeadToHeadModel _$$_HeadToHeadModelFromJson(Map<String, dynamic> json) =>
    _$_HeadToHeadModel(
      get: json['get'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int?,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => FixtureResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_HeadToHeadModelToJson(_$_HeadToHeadModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };
