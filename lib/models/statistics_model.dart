import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goat_app/models/freezed_model.dart';

part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';

@freezed
class StatisticsModel with _$StatisticsModel {
  const factory StatisticsModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<StatisticsResponse> response,
  }) = _StatisticsModel;

  factory StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsModelFromJson(json);
}

@freezed
class StatisticsResponse with _$StatisticsResponse {
  const factory StatisticsResponse({
    required Team? team,
    required List<StatisticType?>? statistics,
  }) = _StatisticsResponse;

  factory StatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$StatisticsResponseFromJson(json);
}

@freezed
class StatisticType with _$StatisticType {
  const factory StatisticType({
    required dynamic? type,
    required dynamic? value,
  }) = _StatisticType;

  factory StatisticType.fromJson(Map<String, dynamic> json) =>
      _$StatisticTypeFromJson(json);
}
