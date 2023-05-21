// ignore_for_file: unused_import

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/fixture.dart';
import 'package:goat_app/models/statistics_model.dart';

part 'player_model.freezed.dart';
part 'player_model.g.dart';

@freezed
class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<PlayerResponse> response,
  }) = _PlayerModel;

  factory PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerModelFromJson(json);
}

@freezed
class PlayerResponse with _$PlayerResponse {
  const factory PlayerResponse({
    required Player? player,
    required List<StatisticType>? statistics,
  }) = _PlayerResponse;

  factory PlayerResponse.fromJson(Map<String, dynamic> json) =>
      _$PlayerResponseFromJson(json);
}

@freezed
class Player with _$Player {
  const factory Player({
    required Team? team,
    required int? id,
    required String? name,
    required String? firstName,
    required String? lastName,
    required String? age,
    required String? nationality,
    required bool? injured,
    required String? image,
    required int? number,
    required String? pos,
    required String? grid,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
