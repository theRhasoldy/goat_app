import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'soccer.freezed.dart';
part 'soccer.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'code') String? code,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'founded') int? founded,
    @JsonKey(name: 'national') bool? national,
    @JsonKey(name: 'logo') String? logo,
  }) = _Team;
  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
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
