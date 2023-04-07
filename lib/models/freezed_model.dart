import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_model.freezed.dart';
part 'freezed_model.g.dart';

@freezed
class TeamModel with _$TeamModel {
  const factory TeamModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<Response> response,
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    required int? current,
    required int? total,
  }) = _Paging;

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    required Team team,
    required Venue venue,
  }) = _Response;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    required int? id,
    required String? name,
    required String? code,
    required String? country,
    required int? founded,
    required bool? national,
    required String? logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Venue with _$Venue {
  const factory Venue({
    required int? id,
    required String? name,
    required String? address,
    required String? city,
    required int? capacity,
    required String? surface,
    required String? image,
  }) = _Venue;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
