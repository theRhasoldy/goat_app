import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goat_app/models/freezed_model.dart';
import 'package:goat_app/models/fixture.dart';

part 'headtohead_model.freezed.dart';
part 'headtohead_model.g.dart';

@freezed
class HeadToHeadModel with _$HeadToHeadModel {
  const factory HeadToHeadModel({
    required String? get,
    required Map<String, dynamic> parameters,
    required List<dynamic> errors,
    required int? results,
    required Paging paging,
    required List<FixtureResponse> response,
  }) = _HeadToHeadModel;

  factory HeadToHeadModel.fromJson(Map<String, dynamic> json) =>
      _$HeadToHeadModelFromJson(json);
}
