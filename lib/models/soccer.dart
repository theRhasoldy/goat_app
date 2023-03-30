import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'soccer.freezed.dart';
part 'soccer.g.dart';

@freezed
class ApiWrapper with _$ApiWrapper {
  const factory ApiWrapper({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'parameters')Parameters? parameters,
    @JsonKey(name: 'errors')List<String>? errors,
    @JsonKey(name: 'results')int? results,
    @JsonKey(name: 'paging')Paging? paging,
    @JsonKey(name: 'response')List<Response>? response,
  }) = _ApiWrapper;
  factory ApiWrapper.fromJson(Map<String, Object?> json) =>
      _$ApiWrapperFromJson(json);
}

@freezed
class Parameters with _$Parameters {
  const factory Parameters({
    @JsonKey(name: 'id') required int id,
  }) = _Parameters;
  factory Parameters.fromJson(Map<String, Object?> json) =>
      _$ParametersFromJson(json);
}

@freezed
class Paging with _$Paging {
  const factory Paging({
    @JsonKey(name: 'current') required int current,
    @JsonKey(name: 'total') required int total,
  }) = _Paging;
  factory Paging.fromJson(Map<String, Object?> json) => _$PagingFromJson(json);
}

@freezed
class Response with _$Response {
  const factory Response({
    @JsonKey(name: 'team') Team? team,
    @JsonKey(name: 'venue') Venue? venue,
  }) = _Response;
  factory Response.fromJson(Map<String, Object?> json) =>
      _$ResponseFromJson(json);
}

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

@freezed
class Venue with _$Venue {
  const factory Venue({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'capacity') int? capacity,
    @JsonKey(name: 'surface') String? surface,
    @JsonKey(name: 'image') String? image,
  }) = _Venue;
  factory Venue.fromJson(Map<String, Object?> json) => _$VenueFromJson(json);
}
