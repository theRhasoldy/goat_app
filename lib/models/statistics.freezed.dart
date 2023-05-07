// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FixtureStatistics _$FixtureStatisticsFromJson(Map<String, dynamic> json) {
  return _FixtureStatistics.fromJson(json);
}

/// @nodoc
mixin _$FixtureStatistics {
  Team get team => throw _privateConstructorUsedError;
  List<Statistic> get statistics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureStatisticsCopyWith<FixtureStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureStatisticsCopyWith<$Res> {
  factory $FixtureStatisticsCopyWith(
          FixtureStatistics value, $Res Function(FixtureStatistics) then) =
      _$FixtureStatisticsCopyWithImpl<$Res, FixtureStatistics>;
  @useResult
  $Res call({Team team, List<Statistic> statistics});

  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class _$FixtureStatisticsCopyWithImpl<$Res, $Val extends FixtureStatistics>
    implements $FixtureStatisticsCopyWith<$Res> {
  _$FixtureStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? statistics = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistic>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FixtureStatisticsCopyWith<$Res>
    implements $FixtureStatisticsCopyWith<$Res> {
  factory _$$_FixtureStatisticsCopyWith(_$_FixtureStatistics value,
          $Res Function(_$_FixtureStatistics) then) =
      __$$_FixtureStatisticsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team, List<Statistic> statistics});

  @override
  $TeamCopyWith<$Res> get team;
}

/// @nodoc
class __$$_FixtureStatisticsCopyWithImpl<$Res>
    extends _$FixtureStatisticsCopyWithImpl<$Res, _$_FixtureStatistics>
    implements _$$_FixtureStatisticsCopyWith<$Res> {
  __$$_FixtureStatisticsCopyWithImpl(
      _$_FixtureStatistics _value, $Res Function(_$_FixtureStatistics) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? statistics = null,
  }) {
    return _then(_$_FixtureStatistics(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      statistics: null == statistics
          ? _value._statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as List<Statistic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FixtureStatistics implements _FixtureStatistics {
  const _$_FixtureStatistics(
      {required this.team, required final List<Statistic> statistics})
      : _statistics = statistics;

  factory _$_FixtureStatistics.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureStatisticsFromJson(json);

  @override
  final Team team;
  final List<Statistic> _statistics;
  @override
  List<Statistic> get statistics {
    if (_statistics is EqualUnmodifiableListView) return _statistics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statistics);
  }

  @override
  String toString() {
    return 'FixtureStatistics(team: $team, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FixtureStatistics &&
            (identical(other.team, team) || other.team == team) &&
            const DeepCollectionEquality()
                .equals(other._statistics, _statistics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, team, const DeepCollectionEquality().hash(_statistics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixtureStatisticsCopyWith<_$_FixtureStatistics> get copyWith =>
      __$$_FixtureStatisticsCopyWithImpl<_$_FixtureStatistics>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureStatisticsToJson(
      this,
    );
  }
}

abstract class _FixtureStatistics implements FixtureStatistics {
  const factory _FixtureStatistics(
      {required final Team team,
      required final List<Statistic> statistics}) = _$_FixtureStatistics;

  factory _FixtureStatistics.fromJson(Map<String, dynamic> json) =
      _$_FixtureStatistics.fromJson;

  @override
  Team get team;
  @override
  List<Statistic> get statistics;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureStatisticsCopyWith<_$_FixtureStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String logo});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? logo = null,
  }) {
    return _then(_$_Team(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team implements _Team {
  const _$_Team({required this.id, required this.name, required this.logo});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String logo;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {required final int id,
      required final String name,
      required final String logo}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return _Statistic.fromJson(json);
}

/// @nodoc
mixin _$Statistic {
  String get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticCopyWith<Statistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticCopyWith<$Res> {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) then) =
      _$StatisticCopyWithImpl<$Res, Statistic>;
  @useResult
  $Res call({String type, dynamic value});
}

/// @nodoc
class _$StatisticCopyWithImpl<$Res, $Val extends Statistic>
    implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatisticCopyWith<$Res> implements $StatisticCopyWith<$Res> {
  factory _$$_StatisticCopyWith(
          _$_Statistic value, $Res Function(_$_Statistic) then) =
      __$$_StatisticCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, dynamic value});
}

/// @nodoc
class __$$_StatisticCopyWithImpl<$Res>
    extends _$StatisticCopyWithImpl<$Res, _$_Statistic>
    implements _$$_StatisticCopyWith<$Res> {
  __$$_StatisticCopyWithImpl(
      _$_Statistic _value, $Res Function(_$_Statistic) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = freezed,
  }) {
    return _then(_$_Statistic(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Statistic implements _Statistic {
  const _$_Statistic({required this.type, required this.value});

  factory _$_Statistic.fromJson(Map<String, dynamic> json) =>
      _$$_StatisticFromJson(json);

  @override
  final String type;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'Statistic(type: $type, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Statistic &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatisticCopyWith<_$_Statistic> get copyWith =>
      __$$_StatisticCopyWithImpl<_$_Statistic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatisticToJson(
      this,
    );
  }
}

abstract class _Statistic implements Statistic {
  const factory _Statistic(
      {required final String type,
      required final dynamic value}) = _$_Statistic;

  factory _Statistic.fromJson(Map<String, dynamic> json) =
      _$_Statistic.fromJson;

  @override
  String get type;
  @override
  dynamic get value;
  @override
  @JsonKey(ignore: true)
  _$$_StatisticCopyWith<_$_Statistic> get copyWith =>
      throw _privateConstructorUsedError;
}
