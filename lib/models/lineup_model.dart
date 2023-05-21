// ignore_for_file: unused_import

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
    required List<Lineup>? response,
  }) = _LineupModel;

  factory LineupModel.fromJson(Map<String, dynamic> json) =>
      _$LineupModelFromJson(json);
}

@freezed
class Lineup with _$Lineup {
  const factory Lineup({
    required Team? team,
    required String? formation,
    required List<Starter>? startXI,
    required List<Starter>? substitutes,
    required Map<String, dynamic> coach,
  }) = _Lineup;

  factory Lineup.fromJson(Map<String, dynamic> json) => _$LineupFromJson(json);
}

@freezed
class Starter with _$Starter {
  const factory Starter({
    required Player? player,
  }) = _Starter;

  factory Starter.fromJson(Map<String, dynamic> json) =>
      _$StarterFromJson(json);
}
