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
  List<Lineup>? get response => throw _privateConstructorUsedError;

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
      List<Lineup>? response});

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
    Object? response = freezed,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Lineup>?,
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
      List<Lineup>? response});

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
    Object? response = freezed,
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
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Lineup>?,
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
      required final List<Lineup>? response})
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
  final List<Lineup>? _response;
  @override
  List<Lineup>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
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
      required final List<Lineup>? response}) = _$_LineupModel;

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
  List<Lineup>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_LineupModelCopyWith<_$_LineupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Lineup _$LineupFromJson(Map<String, dynamic> json) {
  return _Lineup.fromJson(json);
}

/// @nodoc
mixin _$Lineup {
  Team? get team => throw _privateConstructorUsedError;
  String? get formation => throw _privateConstructorUsedError;
  List<Starter>? get startXI => throw _privateConstructorUsedError;
  List<Starter>? get substitutes => throw _privateConstructorUsedError;
  Coach? get coach => throw _privateConstructorUsedError;

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
      List<Starter>? startXI,
      List<Starter>? substitutes,
      Coach? coach});

  $TeamCopyWith<$Res>? get team;
  $CoachCopyWith<$Res>? get coach;
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
    Object? startXI = freezed,
    Object? substitutes = freezed,
    Object? coach = freezed,
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
      startXI: freezed == startXI
          ? _value.startXI
          : startXI // ignore: cast_nullable_to_non_nullable
              as List<Starter>?,
      substitutes: freezed == substitutes
          ? _value.substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Starter>?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach?,
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

  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res>? get coach {
    if (_value.coach == null) {
      return null;
    }

    return $CoachCopyWith<$Res>(_value.coach!, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
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
      List<Starter>? startXI,
      List<Starter>? substitutes,
      Coach? coach});

  @override
  $TeamCopyWith<$Res>? get team;
  @override
  $CoachCopyWith<$Res>? get coach;
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
    Object? startXI = freezed,
    Object? substitutes = freezed,
    Object? coach = freezed,
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
      startXI: freezed == startXI
          ? _value._startXI
          : startXI // ignore: cast_nullable_to_non_nullable
              as List<Starter>?,
      substitutes: freezed == substitutes
          ? _value._substitutes
          : substitutes // ignore: cast_nullable_to_non_nullable
              as List<Starter>?,
      coach: freezed == coach
          ? _value.coach
          : coach // ignore: cast_nullable_to_non_nullable
              as Coach?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lineup implements _Lineup {
  const _$_Lineup(
      {required this.team,
      required this.formation,
      required final List<Starter>? startXI,
      required final List<Starter>? substitutes,
      required this.coach})
      : _startXI = startXI,
        _substitutes = substitutes;

  factory _$_Lineup.fromJson(Map<String, dynamic> json) =>
      _$$_LineupFromJson(json);

  @override
  final Team? team;
  @override
  final String? formation;
  final List<Starter>? _startXI;
  @override
  List<Starter>? get startXI {
    final value = _startXI;
    if (value == null) return null;
    if (_startXI is EqualUnmodifiableListView) return _startXI;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Starter>? _substitutes;
  @override
  List<Starter>? get substitutes {
    final value = _substitutes;
    if (value == null) return null;
    if (_substitutes is EqualUnmodifiableListView) return _substitutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Coach? coach;

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
            (identical(other.coach, coach) || other.coach == coach));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      team,
      formation,
      const DeepCollectionEquality().hash(_startXI),
      const DeepCollectionEquality().hash(_substitutes),
      coach);

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
      required final List<Starter>? startXI,
      required final List<Starter>? substitutes,
      required final Coach? coach}) = _$_Lineup;

  factory _Lineup.fromJson(Map<String, dynamic> json) = _$_Lineup.fromJson;

  @override
  Team? get team;
  @override
  String? get formation;
  @override
  List<Starter>? get startXI;
  @override
  List<Starter>? get substitutes;
  @override
  Coach? get coach;
  @override
  @JsonKey(ignore: true)
  _$$_LineupCopyWith<_$_Lineup> get copyWith =>
      throw _privateConstructorUsedError;
}

Starter _$StarterFromJson(Map<String, dynamic> json) {
  return _Starter.fromJson(json);
}

/// @nodoc
mixin _$Starter {
  Player? get player => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarterCopyWith<Starter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarterCopyWith<$Res> {
  factory $StarterCopyWith(Starter value, $Res Function(Starter) then) =
      _$StarterCopyWithImpl<$Res, Starter>;
  @useResult
  $Res call({Player? player});

  $PlayerCopyWith<$Res>? get player;
}

/// @nodoc
class _$StarterCopyWithImpl<$Res, $Val extends Starter>
    implements $StarterCopyWith<$Res> {
  _$StarterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_value.copyWith(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlayerCopyWith<$Res>? get player {
    if (_value.player == null) {
      return null;
    }

    return $PlayerCopyWith<$Res>(_value.player!, (value) {
      return _then(_value.copyWith(player: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StarterCopyWith<$Res> implements $StarterCopyWith<$Res> {
  factory _$$_StarterCopyWith(
          _$_Starter value, $Res Function(_$_Starter) then) =
      __$$_StarterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Player? player});

  @override
  $PlayerCopyWith<$Res>? get player;
}

/// @nodoc
class __$$_StarterCopyWithImpl<$Res>
    extends _$StarterCopyWithImpl<$Res, _$_Starter>
    implements _$$_StarterCopyWith<$Res> {
  __$$_StarterCopyWithImpl(_$_Starter _value, $Res Function(_$_Starter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? player = freezed,
  }) {
    return _then(_$_Starter(
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as Player?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Starter implements _Starter {
  const _$_Starter({required this.player});

  factory _$_Starter.fromJson(Map<String, dynamic> json) =>
      _$$_StarterFromJson(json);

  @override
  final Player? player;

  @override
  String toString() {
    return 'Starter(player: $player)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Starter &&
            (identical(other.player, player) || other.player == player));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, player);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StarterCopyWith<_$_Starter> get copyWith =>
      __$$_StarterCopyWithImpl<_$_Starter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarterToJson(
      this,
    );
  }
}

abstract class _Starter implements Starter {
  const factory _Starter({required final Player? player}) = _$_Starter;

  factory _Starter.fromJson(Map<String, dynamic> json) = _$_Starter.fromJson;

  @override
  Player? get player;
  @override
  @JsonKey(ignore: true)
  _$$_StarterCopyWith<_$_Starter> get copyWith =>
      throw _privateConstructorUsedError;
}

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call({int? id, String? name, String? photo});
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoachCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$_CoachCopyWith(_$_Coach value, $Res Function(_$_Coach) then) =
      __$$_CoachCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? photo});
}

/// @nodoc
class __$$_CoachCopyWithImpl<$Res> extends _$CoachCopyWithImpl<$Res, _$_Coach>
    implements _$$_CoachCopyWith<$Res> {
  __$$_CoachCopyWithImpl(_$_Coach _value, $Res Function(_$_Coach) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$_Coach(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coach implements _Coach {
  const _$_Coach({required this.id, required this.name, required this.photo});

  factory _$_Coach.fromJson(Map<String, dynamic> json) =>
      _$$_CoachFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? photo;

  @override
  String toString() {
    return 'Coach(id: $id, name: $name, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coach &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      __$$_CoachCopyWithImpl<_$_Coach>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoachToJson(
      this,
    );
  }
}

abstract class _Coach implements Coach {
  const factory _Coach(
      {required final int? id,
      required final String? name,
      required final String? photo}) = _$_Coach;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$_Coach.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  @JsonKey(ignore: true)
  _$$_CoachCopyWith<_$_Coach> get copyWith =>
      throw _privateConstructorUsedError;
}
