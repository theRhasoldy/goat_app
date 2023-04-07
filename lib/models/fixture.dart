import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goat_app/models/freezed_model.dart';

part 'fixture.freezed.dart';
part 'fixture.g.dart';

@freezed
class FixtureModel with _$FixtureModel {
  const factory FixtureModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<FixtureResponse> response,
  }) = _FixtureModel;

  factory FixtureModel.fromJson(Map<String, dynamic> json) =>
      _$FixtureModelFromJson(json);
}

@freezed
class FixtureResponse with _$FixtureResponse {
  const factory FixtureResponse({
    required Fixture fixture,
    required League league,
    required Teams teams,
    required Map<String, int?> goals,
    required Score score,
  }) = _FixtureResponse;

  factory FixtureResponse.fromJson(Map<String, dynamic> json) =>
      _$FixtureResponseFromJson(json);
}

@freezed
class Fixture with _$Fixture {
  const factory Fixture({
    required int? id,
    required String? referee,
    required String? timezone,
    required String? date,
    required int? timestamp,
    required Periods periods,
    required Venue venue,
    required Status status,
  }) = _Fixture;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);
}

@freezed
class Teams with _$Teams {
  const factory Teams({
    required Team home,
    required Team away,
  }) = _Teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}

@freezed
class Periods with _$Periods {
  const factory Periods({
    required int? first,
    required int? second,
  }) = _Periods;

  factory Periods.fromJson(Map<String, dynamic> json) =>
      _$PeriodsFromJson(json);
}

@freezed
class Status with _$Status {
  const factory Status({
    required String? long,
    required String? short,
    required int? elapsed,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class League with _$League {
  const factory League({
    required int? id,
    required String? name,
    required String? country,
    required String? logo,
    required String? flag,
    required int? season,
    required String? round,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Score with _$Score {
  const factory Score({
    required Map<String, int?> halftime,
    required Map<String, int?> fulltime,
    required Map<String, int?> extratime,
    required Map<String, int?> penalty,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}



