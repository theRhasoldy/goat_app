// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lineup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LineupModel _$LineupModelFromJson(Map<String, dynamic> json) {
  return _LineupModel.fromJson(json);
}

/// @nodoc
mixin _$LineupModel {
  String? get get => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int? get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<LineupResponse> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineupModelCopyWith<LineupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupModelCopyWith<$Res> {
  factory $LineupModelCopyWith(
          LineupModel value, $Res Function(LineupModel) then) =
      _$LineupModelCopyWithImpl<$Res, LineupModel>;
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<LineupResponse> response});

  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$LineupModelCopyWithImpl<$Res, $Val extends LineupModel>
    implements $LineupModelCopyWith<$Res> {
  _$LineupModelCopyWithImpl(this._value, this._then);

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
              as List<LineupResponse>,
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
abstract class _$$_LineupModelCopyWith<$Res>
    implements $LineupModelCopyWith<$Res> {
  factory _$$_LineupModelCopyWith(
          _$_LineupModel value, $Res Function(_$_LineupModel) then) =
      __$$_LineupModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<LineupResponse> response});

  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_LineupModelCopyWithImpl<$Res>
    extends _$LineupModelCopyWithImpl<$Res, _$_LineupModel>
    implements _$$_LineupModelCopyWith<$Res> {
  __$$_LineupModelCopyWithImpl(
      _$_LineupModel _value, $Res Function(_$_LineupModel) _then)
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
    return _then(_$_LineupModel(
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
              as List<LineupResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineupModel implements _LineupModel {
  const _$_LineupModel(
      {required this.get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<LineupResponse> response})
      : _parameters = parameters,
        _errors = errors,
        _response = response;

  factory _$_LineupModel.fromJson(Map<String, dynamic> json) =>
      _$$_LineupModelFromJson(json);

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
  final List<LineupResponse> _response;
  @override
  List<LineupResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'LineupModel(get: $get, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupModel &&
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
  _$$_LineupModelCopyWith<_$_LineupModel> get copyWith =>
      __$$_LineupModelCopyWithImpl<_$_LineupModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineupModelToJson(
      this,
    );
  }
}

abstract class _LineupModel implements LineupModel {
  const factory _LineupModel(
      {required final String? get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required final int? results,
      required final Paging paging,
      required final List<LineupResponse> response}) = _$_LineupModel;

  factory _LineupModel.fromJson(Map<String, dynamic> json) =
      _$_LineupModel.fromJson;

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
  List<LineupResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$$_LineupModelCopyWith<_$_LineupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LineupResponse _$LineupResponseFromJson(Map<String, dynamic> json) {
  return _LineupResponse.fromJson(json);
}

/// @nodoc
mixin _$LineupResponse {
  Lineup? get homeLineup => throw _privateConstructorUsedError;
  Lineup? get awayLineup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineupResponseCopyWith<LineupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupResponseCopyWith<$Res> {
  factory $LineupResponseCopyWith(
          LineupResponse value, $Res Function(LineupResponse) then) =
      _$LineupResponseCopyWithImpl<$Res, LineupResponse>;
  @useResult
  $Res call({Lineup? homeLineup, Lineup? awayLineup});

  $LineupCopyWith<$Res>? get homeLineup;
  $LineupCopyWith<$Res>? get awayLineup;
}

/// @nodoc
class _$LineupResponseCopyWithImpl<$Res, $Val extends LineupResponse>
    implements $LineupResponseCopyWith<$Res> {
  _$LineupResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeLineup = freezed,
    Object? awayLineup = freezed,
  }) {
    return _then(_value.copyWith(
      homeLineup: freezed == homeLineup
          ? _value.homeLineup
          : homeLineup // ignore: cast_nullable_to_non_nullable
              as Lineup?,
      awayLineup: freezed == awayLineup
          ? _value.awayLineup
          : awayLineup // ignore: cast_nullable_to_non_nullable
              as Lineup?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LineupCopyWith<$Res>? get homeLineup {
    if (_value.homeLineup == null) {
      return null;
    }

    return $LineupCopyWith<$Res>(_value.homeLineup!, (value) {
      return _then(_value.copyWith(homeLineup: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LineupCopyWith<$Res>? get awayLineup {
    if (_value.awayLineup == null) {
      return null;
    }

    return $LineupCopyWith<$Res>(_value.awayLineup!, (value) {
      return _then(_value.copyWith(awayLineup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LineupResponseCopyWith<$Res>
    implements $LineupResponseCopyWith<$Res> {
  factory _$$_LineupResponseCopyWith(
          _$_LineupResponse value, $Res Function(_$_LineupResponse) then) =
      __$$_LineupResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Lineup? homeLineup, Lineup? awayLineup});

  @override
  $LineupCopyWith<$Res>? get homeLineup;
  @override
  $LineupCopyWith<$Res>? get awayLineup;
}

/// @nodoc
class __$$_LineupResponseCopyWithImpl<$Res>
    extends _$LineupResponseCopyWithImpl<$Res, _$_LineupResponse>
    implements _$$_LineupResponseCopyWith<$Res> {
  __$$_LineupResponseCopyWithImpl(
      _$_LineupResponse _value, $Res Function(_$_LineupResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeLineup = freezed,
    Object? awayLineup = freezed,
  }) {
    return _then(_$_LineupResponse(
      homeLineup: freezed == homeLineup
          ? _value.homeLineup
          : homeLineup // ignore: cast_nullable_to_non_nullable
              as Lineup?,
      awayLineup: freezed == awayLineup
          ? _value.awayLineup
          : awayLineup // ignore: cast_nullable_to_non_nullable
              as Lineup?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineupResponse implements _LineupResponse {
  const _$_LineupResponse({required this.homeLineup, required this.awayLineup});

  factory _$_LineupResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LineupResponseFromJson(json);

  @override
  final Lineup? homeLineup;
  @override
  final Lineup? awayLineup;

  @override
  String toString() {
    return 'LineupResponse(homeLineup: $homeLineup, awayLineup: $awayLineup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineupResponse &&
            (identical(other.homeLineup, homeLineup) ||
                other.homeLineup == homeLineup) &&
            (identical(other.awayLineup, awayLineup) ||
                other.awayLineup == awayLineup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, homeLineup, awayLineup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineupResponseCopyWith<_$_LineupResponse> get copyWith =>
      __$$_LineupResponseCopyWithImpl<_$_LineupResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineupResponseToJson(
      this,
    );
  }
}

abstract class _LineupResponse implements LineupResponse {
  const factory _LineupResponse(
      {required final Lineup? homeLineup,
      required final Lineup? awayLineup}) = _$_LineupResponse;

  factory _LineupResponse.fromJson(Map<String, dynamic> json) =
      _$_LineupResponse.fromJson;

  @override
  Lineup? get homeLineup;
  @override
  Lineup? get awayLineup;
  @override
  @JsonKey(ignore: true)
  _$$_LineupResponseCopyWith<_$_LineupResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Lineup _$LineupFromJson(Map<String, dynamic> json) {
  return _Lineup.fromJson(json);
}

/// @nodoc
mixin _$Lineup {
  Team? get team => throw _privateConstructorUsedError;
  String? get formation => throw _privateConstructorUsedError;
  List<Player> get startXI => throw _privateConstructorUsedError;
  List<Player> get substitutes => throw _privateConstructorUsedError;
  List<Player> get coach => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineupCopyWith<Lineup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineupCopyWith<$Res> {
  factory $LineupCopyWith(Lineup value, $Res Function(Lineup) then) =
      _$LineupCopyWithImpl<$Res, Lineup>;
  @useResult
  $Res call(
      {Team? team,
      String? formation,
      List<Player> startXI,
      List<Player> substitutes,
      List<Player> coach});

  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class _$LineupCopyWithImpl<$Res, $Val extends Lineup>
    implements $LineupCopyWith<$Res> {
  _$LineupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? formation = freezed,
    Object? startXI = null,
    Object? substitutes = null,
    Object? coach = null,
  }) {
    return _then(_value.copyWith(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      formation: freezed == formation
          ? _value.formation
          : formation // ignore: cast_nullable_to_non_nullable
              as String?,
      startXI: null == startXI
          ? _value.startXI
          : startXI // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      substitutes: null == substitutes
          ? _value.substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      coach: null == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as List<Player>,
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
abstract class _$$_LineupCopyWith<$Res> implements $LineupCopyWith<$Res> {
  factory _$$_LineupCopyWith(_$_Lineup value, $Res Function(_$_Lineup) then) =
      __$$_LineupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Team? team,
      String? formation,
      List<Player> startXI,
      List<Player> substitutes,
      List<Player> coach});

  @override
  $TeamCopyWith<$Res>? get team;
}

/// @nodoc
class __$$_LineupCopyWithImpl<$Res>
    extends _$LineupCopyWithImpl<$Res, _$_Lineup>
    implements _$$_LineupCopyWith<$Res> {
  __$$_LineupCopyWithImpl(_$_Lineup _value, $Res Function(_$_Lineup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = freezed,
    Object? formation = freezed,
    Object? startXI = null,
    Object? substitutes = null,
    Object? coach = null,
  }) {
    return _then(_$_Lineup(
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team?,
      formation: freezed == formation
          ? _value.formation
          : formation // ignore: cast_nullable_to_non_nullable
              as String?,
      startXI: null == startXI
          ? _value._startXI
          : startXI // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      substitutes: null == substitutes
          ? _value._substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Player>,
      coach: null == coach
          ? _value._coach
          : coach // ignore: cast_nullable_to_non_nullable
              as List<Player>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lineup implements _Lineup {
  const _$_Lineup(
      {required this.team,
      required this.formation,
      required final List<Player> startXI,
      required final List<Player> substitutes,
      required final List<Player> coach})
      : _startXI = startXI,
        _substitutes = substitutes,
        _coach = coach;

  factory _$_Lineup.fromJson(Map<String, dynamic> json) =>
      _$$_LineupFromJson(json);

  @override
  final Team? team;
  @override
  final String? formation;
  final List<Player> _startXI;
  @override
  List<Player> get startXI {
    if (_startXI is EqualUnmodifiableListView) return _startXI;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_startXI);
  }

  final List<Player> _substitutes;
  @override
  List<Player> get substitutes {
    if (_substitutes is EqualUnmodifiableListView) return _substitutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_substitutes);
  }

  final List<Player> _coach;
  @override
  List<Player> get coach {
    if (_coach is EqualUnmodifiableListView) return _coach;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coach);
  }

  @override
  String toString() {
    return 'Lineup(team: $team, formation: $formation, startXI: $startXI, substitutes: $substitutes, coach: $coach)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lineup &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.formation, formation) ||
                other.formation == formation) &&
            const DeepCollectionEquality().equals(other._startXI, _startXI) &&
            const DeepCollectionEquality()
                .equals(other._substitutes, _substitutes) &&
            const DeepCollectionEquality().equals(other._coach, _coach));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      team,
      formation,
      const DeepCollectionEquality().hash(_startXI),
      const DeepCollectionEquality().hash(_substitutes),
      const DeepCollectionEquality().hash(_coach));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineupCopyWith<_$_Lineup> get copyWith =>
      __$$_LineupCopyWithImpl<_$_Lineup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineupToJson(
      this,
    );
  }
}

abstract class _Lineup implements Lineup {
  const factory _Lineup(
      {required final Team? team,
      required final String? formation,
      required final List<Player> startXI,
      required final List<Player> substitutes,
      required final List<Player> coach}) = _$_Lineup;

  factory _Lineup.fromJson(Map<String, dynamic> json) = _$_Lineup.fromJson;

  @override
  Team? get team;
  @override
  String? get formation;
  @override
  List<Player> get startXI;
  @override
  List<Player> get substitutes;
  @override
  List<Player> get coach;
  @override
  @JsonKey(ignore: true)
  _$$_LineupCopyWith<_$_Lineup> get copyWith =>
      throw _privateConstructorUsedError;
}
