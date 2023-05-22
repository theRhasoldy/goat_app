// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamModel _$$_TeamModelFromJson(Map<String, dynamic> json) => _$_TeamModel(
      get: json['get'] as String?,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int?,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TeamModelToJson(_$_TeamModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      current: json['current'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'current': instance.current,
      'total': instance.total,
    };

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'team': instance.team,
      'venue': instance.venue,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'],
      name: json['name'] as String?,
      code: json['code'] as String?,
      country: json['country'] as String?,
      founded: json['founded'] as int?,
      national: json['national'] as bool?,
      colors: json['colors'] == null
          ? null
          : TeamColors.fromJson(json['colors'] as Map<String, dynamic>),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'country': instance.country,
      'founded': instance.founded,
      'national': instance.national,
      'colors': instance.colors,
      'logo': instance.logo,
    };

_$_TeamColors _$$_TeamColorsFromJson(Map<String, dynamic> json) =>
    _$_TeamColors(
      player: json['player'] == null
          ? null
          : PlayersColors.fromJson(json['player'] as Map<String, dynamic>),
      goalkeeper: json['goalkeeper'] == null
          ? null
          : PlayersColors.fromJson(json['goalkeeper'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamColorsToJson(_$_TeamColors instance) =>
    <String, dynamic>{
      'player': instance.player,
      'goalkeeper': instance.goalkeeper,
    };

_$_PlayersColors _$$_PlayersColorsFromJson(Map<String, dynamic> json) =>
    _$_PlayersColors(
      primary: json['primary'] as String?,
      number: json['number'] as String?,
      border: json['border'] as String?,
    );

Map<String, dynamic> _$$_PlayersColorsToJson(_$_PlayersColors instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'number': instance.number,
      'border': instance.border,
    };

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      capacity: json['capacity'] as int?,
      surface: json['surface'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'capacity': instance.capacity,
      'surface': instance.surface,
      'image': instance.image,
    };
