// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) {
  return _StatisticsModel.fromJson(json);
}

/// @nodoc
mixin _$StatisticsModel {
  String? get get => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int? get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<StatisticsModel> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsModelCopyWith<StatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsModelCopyWith<$Res> {
  factory $StatisticsModelCopyWith(
          StatisticsModel value, $Res Function(StatisticsModel) then) =
      _$StatisticsModelCopyWithImpl<$Res, StatisticsModel>;
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<StatisticsModel> response});

  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$StatisticsModelCopyWithImpl<$Res, $Val extends StatisticsModel>
    implements $StatisticsModelCopyWith<$Res> {
  _$StatisticsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? get = freezed,
    Object? parameters = null,
    Object? errors = null,
    Object? results = freezed,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      get: freezed == get
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int?,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StatisticsModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PagingCopyWith<$Res> get paging {
    return $PagingCopyWith<$Res>(_value.paging, (value) {
      return _then(_value.copyWith(paging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatisticsModelCopyWith<$Res>
    implements $StatisticsModelCopyWith<$Res> {
  factory _$$_StatisticsModelCopyWith(
          _$_StatisticsModel value, $Res Function(_$_StatisticsModel) then) =
      __$$_StatisticsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<StatisticsModel> response});

  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_StatisticsModelCopyWithImpl<$Res>
    extends _$StatisticsModelCopyWithImpl<$Res, _$_StatisticsModel>
    implements _$$_StatisticsModelCopyWith<$Res> {
  __$$_StatisticsModelCopyWithImpl(
      _$_StatisticsModel _value, $Res Function(_$_StatisticsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? get = freezed,
    Object? parameters = null,
    Object? errors = null,
    Object? results = freezed,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_$_StatisticsModel(
      get: freezed == get
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int?,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<StatisticsModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsModel implements _StatisticsModel {
  const _$_StatisticsModel(
      {required this.get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<StatisticsModel> response})
      : _parameters = parameters,
        _errors = errors,
        _response = response;

  factory _$_StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsModelFromJson(json);

  @override
  final String? get;
  final Map<String, dynamic> _parameters;
  @override
  Map<String, dynamic> get parameters {
    if (_parameters is EqualUnmodifiableMapView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_parameters);
  }

  final List<dynamic> _errors;
  @override
  List<dynamic> get errors {
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  final int? results;
  @override
  final Paging paging;
  final List<StatisticsModel> _response;
  @override
  List<StatisticsModel> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'StatisticsModel(get: $get, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsModel &&
            (identical(other.get, get) || other.get == get) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.paging, paging) || other.paging == paging) &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      get,
      const DeepCollectionEquality().hash(_parameters),
      const DeepCollectionEquality().hash(_errors),
      results,
      paging,
      const DeepCollectionEquality().hash(_response));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsModelCopyWith<_$_StatisticsModel> get copyWith =>
      __$$_StatisticsModelCopyWithImpl<_$_StatisticsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsModelToJson(
      this,
    );
  }
}

abstract class _StatisticsModel implements StatisticsModel {
  const factory _StatisticsModel(
      {required final String? get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required final int? results,
      required final Paging paging,
      required final List<StatisticsModel> response}) = _$_StatisticsModel;

  factory _StatisticsModel.fromJson(Map<String, dynamic> json) =
      _$_StatisticsModel.fromJson;

  @override
  String? get get;
  @override
  Map<String, dynamic> get parameters;
  @override
  List<dynamic> get errors;
  @override
  int? get results;
  @override
  Paging get paging;
  @override
  List<StatisticsModel> get response;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsModelCopyWith<_$_StatisticsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticsResponse _$StatisticsResponseFromJson(Map<String, dynamic> json) {
  return _StatisticsResponse.fromJson(json);
}

/// @nodoc
mixin _$StatisticsResponse {
  List<Statistics>? get sides => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsResponseCopyWith<StatisticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsResponseCopyWith<$Res> {
  factory $StatisticsResponseCopyWith(
          StatisticsResponse value, $Res Function(StatisticsResponse) then) =
      _$StatisticsResponseCopyWithImpl<$Res, StatisticsResponse>;
  @useResult
  $Res call({List<Statistics>? sides});
}

/// @nodoc
class _$StatisticsResponseCopyWithImpl<$Res, $Val extends StatisticsResponse>
    implements $StatisticsResponseCopyWith<$Res> {
  _$StatisticsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sides = freezed,
  }) {
    return _then(_value.copyWith(
      sides: freezed == sides
          ? _value.sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Statistics>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticsResponseCopyWith<$Res>
    implements $StatisticsResponseCopyWith<$Res> {
  factory _$$_StatisticsResponseCopyWith(_$_StatisticsResponse value,
          $Res Function(_$_StatisticsResponse) then) =
      __$$_StatisticsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Statistics>? sides});
}

/// @nodoc
class __$$_StatisticsResponseCopyWithImpl<$Res>
    extends _$StatisticsResponseCopyWithImpl<$Res, _$_StatisticsResponse>
    implements _$$_StatisticsResponseCopyWith<$Res> {
  __$$_StatisticsResponseCopyWithImpl(
      _$_StatisticsResponse _value, $Res Function(_$_StatisticsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sides = freezed,
  }) {
    return _then(_$_StatisticsResponse(
      sides: freezed == sides
          ? _value._sides
          : sides // ignore: cast_nullable_to_non_nullable
              as List<Statistics>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsResponse implements _StatisticsResponse {
  const _$_StatisticsResponse({required final List<Statistics>? sides})
      : _sides = sides;

  factory _$_StatisticsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsResponseFromJson(json);

  final List<Statistics>? _sides;
  @override
  List<Statistics>? get sides {
    final value = _sides;
    if (value == null) return null;
    if (_sides is EqualUnmodifiableListView) return _sides;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StatisticsResponse(sides: $sides)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticsResponse &&
            const DeepCollectionEquality().equals(other._sides, _sides));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sides));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsResponseCopyWith<_$_StatisticsResponse> get copyWith =>
      __$$_StatisticsResponseCopyWithImpl<_$_StatisticsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsResponseToJson(
      this,
    );
  }
}

abstract class _StatisticsResponse implements StatisticsResponse {
  const factory _StatisticsResponse({required final List<Statistics>? sides}) =
      _$_StatisticsResponse;

  factory _StatisticsResponse.fromJson(Map<String, dynamic> json) =
      _$_StatisticsResponse.fromJson;

  @override
  List<Statistics>? get sides;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsResponseCopyWith<_$_StatisticsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  Team? get team => throw _privateConstructorUsedError;
  List<StatisticType>? get stats => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call({Team? team, List<StatisticType>? stats});

  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? stats = freezed,
  }) {
    return _then(_value.copyWith(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      stats: freezed == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatisticType>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res>? get team {
    if (_value.team == null) {
      return null;
    }

    return $TeamCopyWith<$Res>(_value.team!, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StatisticsCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$_StatisticsCopyWith(
          _$_Statistics value, $Res Function(_$_Statistics) then) =
      __$$_StatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team? team, List<StatisticType>? stats});

  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$_StatisticsCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$_Statistics>
    implements _$$_StatisticsCopyWith<$Res> {
  __$$_StatisticsCopyWithImpl(
      _$_Statistics _value, $Res Function(_$_Statistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? stats = freezed,
  }) {
    return _then(_$_Statistics(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      stats: freezed == stats
          ? _value._stats
          : stats // ignore: cast_nullable_to_non_nullable
              as List<StatisticType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistics implements _Statistics {
  const _$_Statistics(
      {required this.team, required final List<StatisticType>? stats})
      : _stats = stats;

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticsFromJson(json);

  @override
  final Team? team;
  final List<StatisticType>? _stats;
  @override
  List<StatisticType>? get stats {
    final value = _stats;
    if (value == null) return null;
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Statistics(team: $team, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistics &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality().equals(other._stats, _stats));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, const DeepCollectionEquality().hash(_stats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      __$$_StatisticsCopyWithImpl<_$_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticsToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {required final Team? team,
      required final List<StatisticType>? stats}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  Team? get team;
  @override
  List<StatisticType>? get stats;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticsCopyWith<_$_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

StatisticType _$StatisticTypeFromJson(Map<String, dynamic> json) {
  return _StatisticType.fromJson(json);
}

/// @nodoc
mixin _$StatisticType {
  String? get type => throw _privateConstructorUsedError;
  int? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticTypeCopyWith<StatisticType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticTypeCopyWith<$Res> {
  factory $StatisticTypeCopyWith(
          StatisticType value, $Res Function(StatisticType) then) =
      _$StatisticTypeCopyWithImpl<$Res, StatisticType>;
  @useResult
  $Res call({String? type, int? value});
}

/// @nodoc
class _$StatisticTypeCopyWithImpl<$Res, $Val extends StatisticType>
    implements $StatisticTypeCopyWith<$Res> {
  _$StatisticTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticTypeCopyWith<$Res>
    implements $StatisticTypeCopyWith<$Res> {
  factory _$$_StatisticTypeCopyWith(
          _$_StatisticType value, $Res Function(_$_StatisticType) then) =
      __$$_StatisticTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, int? value});
}

/// @nodoc
class __$$_StatisticTypeCopyWithImpl<$Res>
    extends _$StatisticTypeCopyWithImpl<$Res, _$_StatisticType>
    implements _$$_StatisticTypeCopyWith<$Res> {
  __$$_StatisticTypeCopyWithImpl(
      _$_StatisticType _value, $Res Function(_$_StatisticType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_StatisticType(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticType implements _StatisticType {
  const _$_StatisticType({required this.type, required this.value});

  factory _$_StatisticType.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticTypeFromJson(json);

  @override
  final String? type;
  @override
  final int? value;

  @override
  String toString() {
    return 'StatisticType(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatisticType &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticTypeCopyWith<_$_StatisticType> get copyWith =>
      __$$_StatisticTypeCopyWithImpl<_$_StatisticType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticTypeToJson(
      this,
    );
  }
}

abstract class _StatisticType implements StatisticType {
  const factory _StatisticType(
      {required final String? type,
      required final int? value}) = _$_StatisticType;

  factory _StatisticType.fromJson(Map<String, dynamic> json) =
      _$_StatisticType.fromJson;

  @override
  String? get type;
  @override
  int? get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticTypeCopyWith<_$_StatisticType> get copyWith =>
      throw _privateConstructorUsedError;
}
