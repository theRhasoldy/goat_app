
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'soccer.freezed.dart';

part 'soccer.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    required int leagueID,
    required String name,
    required String country,
    required String code,
    required int season,
    required int teamID,
    required String type,
    required String current,
    required String search,
    required int last,
    required int age,
  }) = _Team;
  factory Team.fromJson(Map<String, Object?> json)
  => _$TeamFromJson(json);
}










// class Team {
//   Team({
//     required this.id,
//     required this.name,
//   });
//
//   String id;
//   String name;
//
//   factory Team.fromJson(Map<String, dynamic> json) => Team(
//     id: json["id"],
//     name: json["name"],
//   );
// }