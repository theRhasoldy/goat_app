import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/player_model.dart';

part 'lineup_model.freezed.dart';
part 'lineup_model.g.dart';

@freezed
class LineupModel with _$LineupModel {
  const factory LineupModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<LineupResponse> response,
  }) = _LineupModel;

  factory LineupModel.fromJson(Map<String, dynamic> json) =>
      _$LineupModelFromJson(json);
}

@freezed
class LineupResponse with _$LineupResponse {
  const factory LineupResponse({
    required Lineup? homeLineup,
    required Lineup? awayLineup,
  }) = _LineupResponse;

  factory LineupResponse.fromJson(Map<String, dynamic> json) =>
      _$LineupResponseFromJson(json);
}

@freezed
class Lineup with _$Lineup {
  const factory Lineup({
    required Team? team,
    required String? formation,
    required List<Player> startXI,
    required List<Player> substitutes,
    required List<Player> coach,
  }) = _Lineup;

  factory Lineup.fromJson(Map<String, dynamic> json) => _$LineupFromJson(json);
}
