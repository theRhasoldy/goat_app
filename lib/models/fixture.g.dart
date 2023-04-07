// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FixtureModel _$$_FixtureModelFromJson(Map<String, dynamic> json) =>
    _$_FixtureModel(
      get: json['get'] as String,
      parameters: json['parameters'] as Map<String, dynamic>,
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => FixtureResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FixtureModelToJson(_$_FixtureModel instance) =>
    <String, dynamic>{
      'get': instance.get,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_FixtureResponse _$$_FixtureResponseFromJson(Map<String, dynamic> json) =>
    _$_FixtureResponse(
      fixture: Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
      goals: Map<String, int>.from(json['goals'] as Map),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FixtureResponseToJson(_$_FixtureResponse instance) =>
    <String, dynamic>{
      'fixture': instance.fixture,
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'score': instance.score,
    };

_$_Fixture _$$_FixtureFromJson(Map<String, dynamic> json) => _$_Fixture(
      id: json['id'] as int,
      referee: json['referee'] as String,
      timezone: json['timezone'] as String,
      date: json['date'] as String,
      timestamp: json['timestamp'] as int,
      periods: Periods.fromJson(json['periods'] as Map<String, dynamic>),
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FixtureToJson(_$_Fixture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'timezone': instance.timezone,
      'date': instance.date,
      'timestamp': instance.timestamp,
      'periods': instance.periods,
      'venue': instance.venue,
      'status': instance.status,
    };

_$_Teams _$$_TeamsFromJson(Map<String, dynamic> json) => _$_Teams(
      home: Team.fromJson(json['home'] as Map<String, dynamic>),
      away: Team.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamsToJson(_$_Teams instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_Periods _$$_PeriodsFromJson(Map<String, dynamic> json) => _$_Periods(
      first: json['first'] as int,
      second: json['second'] as int?,
    );

Map<String, dynamic> _$$_PeriodsToJson(_$_Periods instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      long: json['long'] as String,
      short: json['short'] as String,
      elapsed: json['elapsed'] as int,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
      'elapsed': instance.elapsed,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      logo: json['logo'] as String,
      flag: json['flag'] as String,
      season: json['season'] as int,
      round: json['round'] as String,
    );

Map<String, dynamic> _$$_LeagueToJson(_$_League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'flag': instance.flag,
      'season': instance.season,
      'round': instance.round,
    };

_$_Score _$$_ScoreFromJson(Map<String, dynamic> json) => _$_Score(
      halftime: Map<String, int?>.from(json['halftime'] as Map),
      fulltime: Map<String, int?>.from(json['fulltime'] as Map),
      extratime: Map<String, int?>.from(json['extratime'] as Map),
      penalty: Map<String, int?>.from(json['penalty'] as Map),
    );

Map<String, dynamic> _$$_ScoreToJson(_$_Score instance) => <String, dynamic>{
      'halftime': instance.halftime,
      'fulltime': instance.fulltime,
      'extratime': instance.extratime,
      'penalty': instance.penalty,
    };
