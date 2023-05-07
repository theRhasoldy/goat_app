import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics.freezed.dart';
part 'statistics.g.dart';

@freezed
class FixtureStatistics with _$FixtureStatistics {
  const factory FixtureStatistics({
    required Team team,
    required List<Statistic> statistics,
  }) = _FixtureStatistics;

  factory FixtureStatistics.fromJson(Map<String, dynamic> json) =>
      _$FixtureStatisticsFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
    required String logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Statistic with _$Statistic {
  const factory Statistic({
    required String type,
    required dynamic value,
  }) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) =>
      _$StatisticFromJson(json);
}
