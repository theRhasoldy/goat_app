// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fixture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FixtureModel _$FixtureModelFromJson(Map<String, dynamic> json) {
  return _FixtureModel.fromJson(json);
}

/// @nodoc
mixin _$FixtureModel {
  String? get get => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int? get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<FixtureResponse> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureModelCopyWith<FixtureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureModelCopyWith<$Res> {
  factory $FixtureModelCopyWith(
          FixtureModel value, $Res Function(FixtureModel) then) =
      _$FixtureModelCopyWithImpl<$Res, FixtureModel>;
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<FixtureResponse> response});

  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$FixtureModelCopyWithImpl<$Res, $Val extends FixtureModel>
    implements $FixtureModelCopyWith<$Res> {
  _$FixtureModelCopyWithImpl(this._value, this._then);

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
              as List<FixtureResponse>,
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
abstract class _$$_FixtureModelCopyWith<$Res>
    implements $FixtureModelCopyWith<$Res> {
  factory _$$_FixtureModelCopyWith(
          _$_FixtureModel value, $Res Function(_$_FixtureModel) then) =
      __$$_FixtureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int? results,
      Paging paging,
      List<FixtureResponse> response});

  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_FixtureModelCopyWithImpl<$Res>
    extends _$FixtureModelCopyWithImpl<$Res, _$_FixtureModel>
    implements _$$_FixtureModelCopyWith<$Res> {
  __$$_FixtureModelCopyWithImpl(
      _$_FixtureModel _value, $Res Function(_$_FixtureModel) _then)
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
    return _then(_$_FixtureModel(
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
              as List<FixtureResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FixtureModel implements _FixtureModel {
  const _$_FixtureModel(
      {required this.get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<FixtureResponse> response})
      : _parameters = parameters,
        _errors = errors,
        _response = response;

  factory _$_FixtureModel.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureModelFromJson(json);

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
  final List<FixtureResponse> _response;
  @override
  List<FixtureResponse> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'FixtureModel(get: $get, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FixtureModel &&
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
  _$$_FixtureModelCopyWith<_$_FixtureModel> get copyWith =>
      __$$_FixtureModelCopyWithImpl<_$_FixtureModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureModelToJson(
      this,
    );
  }
}

abstract class _FixtureModel implements FixtureModel {
  const factory _FixtureModel(
      {required final String? get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required final int? results,
      required final Paging paging,
      required final List<FixtureResponse> response}) = _$_FixtureModel;

  factory _FixtureModel.fromJson(Map<String, dynamic> json) =
      _$_FixtureModel.fromJson;

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
  List<FixtureResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureModelCopyWith<_$_FixtureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

FixtureResponse _$FixtureResponseFromJson(Map<String, dynamic> json) {
  return _FixtureResponse.fromJson(json);
}

/// @nodoc
mixin _$FixtureResponse {
  Fixture get fixture => throw _privateConstructorUsedError;
  League get league => throw _privateConstructorUsedError;
  Teams get teams => throw _privateConstructorUsedError;
  Map<String, int?> get goals => throw _privateConstructorUsedError;
  Score get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureResponseCopyWith<FixtureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureResponseCopyWith<$Res> {
  factory $FixtureResponseCopyWith(
          FixtureResponse value, $Res Function(FixtureResponse) then) =
      _$FixtureResponseCopyWithImpl<$Res, FixtureResponse>;
  @useResult
  $Res call(
      {Fixture fixture,
      League league,
      Teams teams,
      Map<String, int?> goals,
      Score score});

  $FixtureCopyWith<$Res> get fixture;
  $LeagueCopyWith<$Res> get league;
  $TeamsCopyWith<$Res> get teams;
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class _$FixtureResponseCopyWithImpl<$Res, $Val extends FixtureResponse>
    implements $FixtureResponseCopyWith<$Res> {
  _$FixtureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixture,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
      goals: null == goals
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FixtureCopyWith<$Res> get fixture {
    return $FixtureCopyWith<$Res>(_value.fixture, (value) {
      return _then(_value.copyWith(fixture: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueCopyWith<$Res> get league {
    return $LeagueCopyWith<$Res>(_value.league, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamsCopyWith<$Res> get teams {
    return $TeamsCopyWith<$Res>(_value.teams, (value) {
      return _then(_value.copyWith(teams: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScoreCopyWith<$Res> get score {
    return $ScoreCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FixtureResponseCopyWith<$Res>
    implements $FixtureResponseCopyWith<$Res> {
  factory _$$_FixtureResponseCopyWith(
          _$_FixtureResponse value, $Res Function(_$_FixtureResponse) then) =
      __$$_FixtureResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Fixture fixture,
      League league,
      Teams teams,
      Map<String, int?> goals,
      Score score});

  @override
  $FixtureCopyWith<$Res> get fixture;
  @override
  $LeagueCopyWith<$Res> get league;
  @override
  $TeamsCopyWith<$Res> get teams;
  @override
  $ScoreCopyWith<$Res> get score;
}

/// @nodoc
class __$$_FixtureResponseCopyWithImpl<$Res>
    extends _$FixtureResponseCopyWithImpl<$Res, _$_FixtureResponse>
    implements _$$_FixtureResponseCopyWith<$Res> {
  __$$_FixtureResponseCopyWithImpl(
      _$_FixtureResponse _value, $Res Function(_$_FixtureResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fixture = null,
    Object? league = null,
    Object? teams = null,
    Object? goals = null,
    Object? score = null,
  }) {
    return _then(_$_FixtureResponse(
      fixture: null == fixture
          ? _value.fixture
          : fixture // ignore: cast_nullable_to_non_nullable
              as Fixture,
      league: null == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League,
      teams: null == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Teams,
      goals: null == goals
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as Score,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FixtureResponse implements _FixtureResponse {
  const _$_FixtureResponse(
      {required this.fixture,
      required this.league,
      required this.teams,
      required final Map<String, int?> goals,
      required this.score})
      : _goals = goals;

  factory _$_FixtureResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureResponseFromJson(json);

  @override
  final Fixture fixture;
  @override
  final League league;
  @override
  final Teams teams;
  final Map<String, int?> _goals;
  @override
  Map<String, int?> get goals {
    if (_goals is EqualUnmodifiableMapView) return _goals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_goals);
  }

  @override
  final Score score;

  @override
  String toString() {
    return 'FixtureResponse(fixture: $fixture, league: $league, teams: $teams, goals: $goals, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FixtureResponse &&
            (identical(other.fixture, fixture) || other.fixture == fixture) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.teams, teams) || other.teams == teams) &&
            const DeepCollectionEquality().equals(other._goals, _goals) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fixture, league, teams,
      const DeepCollectionEquality().hash(_goals), score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixtureResponseCopyWith<_$_FixtureResponse> get copyWith =>
      __$$_FixtureResponseCopyWithImpl<_$_FixtureResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureResponseToJson(
      this,
    );
  }
}

abstract class _FixtureResponse implements FixtureResponse {
  const factory _FixtureResponse(
      {required final Fixture fixture,
      required final League league,
      required final Teams teams,
      required final Map<String, int?> goals,
      required final Score score}) = _$_FixtureResponse;

  factory _FixtureResponse.fromJson(Map<String, dynamic> json) =
      _$_FixtureResponse.fromJson;

  @override
  Fixture get fixture;
  @override
  League get league;
  @override
  Teams get teams;
  @override
  Map<String, int?> get goals;
  @override
  Score get score;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureResponseCopyWith<_$_FixtureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Fixture _$FixtureFromJson(Map<String, dynamic> json) {
  return _Fixture.fromJson(json);
}

/// @nodoc
mixin _$Fixture {
  int? get id => throw _privateConstructorUsedError;
  String? get referee => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get timestamp => throw _privateConstructorUsedError;
  Periods get periods => throw _privateConstructorUsedError;
  Venue get venue => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FixtureCopyWith<Fixture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FixtureCopyWith<$Res> {
  factory $FixtureCopyWith(Fixture value, $Res Function(Fixture) then) =
      _$FixtureCopyWithImpl<$Res, Fixture>;
  @useResult
  $Res call(
      {int? id,
      String? referee,
      String? timezone,
      String? date,
      int? timestamp,
      Periods periods,
      Venue venue,
      Status status});

  $PeriodsCopyWith<$Res> get periods;
  $VenueCopyWith<$Res> get venue;
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FixtureCopyWithImpl<$Res, $Val extends Fixture>
    implements $FixtureCopyWith<$Res> {
  _$FixtureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? timezone = freezed,
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? periods = null,
    Object? venue = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodsCopyWith<$Res> get periods {
    return $PeriodsCopyWith<$Res>(_value.periods, (value) {
      return _then(_value.copyWith(periods: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res> get venue {
    return $VenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FixtureCopyWith<$Res> implements $FixtureCopyWith<$Res> {
  factory _$$_FixtureCopyWith(
          _$_Fixture value, $Res Function(_$_Fixture) then) =
      __$$_FixtureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? referee,
      String? timezone,
      String? date,
      int? timestamp,
      Periods periods,
      Venue venue,
      Status status});

  @override
  $PeriodsCopyWith<$Res> get periods;
  @override
  $VenueCopyWith<$Res> get venue;
  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_FixtureCopyWithImpl<$Res>
    extends _$FixtureCopyWithImpl<$Res, _$_Fixture>
    implements _$$_FixtureCopyWith<$Res> {
  __$$_FixtureCopyWithImpl(_$_Fixture _value, $Res Function(_$_Fixture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? referee = freezed,
    Object? timezone = freezed,
    Object? date = freezed,
    Object? timestamp = freezed,
    Object? periods = null,
    Object? venue = null,
    Object? status = null,
  }) {
    return _then(_$_Fixture(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      referee: freezed == referee
          ? _value.referee
          : referee // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as Periods,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Fixture implements _Fixture {
  const _$_Fixture(
      {required this.id,
      required this.referee,
      required this.timezone,
      required this.date,
      required this.timestamp,
      required this.periods,
      required this.venue,
      required this.status});

  factory _$_Fixture.fromJson(Map<String, dynamic> json) =>
      _$$_FixtureFromJson(json);

  @override
  final int? id;
  @override
  final String? referee;
  @override
  final String? timezone;
  @override
  final String? date;
  @override
  final int? timestamp;
  @override
  final Periods periods;
  @override
  final Venue venue;
  @override
  final Status status;

  @override
  String toString() {
    return 'Fixture(id: $id, referee: $referee, timezone: $timezone, date: $date, timestamp: $timestamp, periods: $periods, venue: $venue, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fixture &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.referee, referee) || other.referee == referee) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.periods, periods) || other.periods == periods) &&
            (identical(other.venue, venue) || other.venue == venue) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, referee, timezone, date,
      timestamp, periods, venue, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      __$$_FixtureCopyWithImpl<_$_Fixture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FixtureToJson(
      this,
    );
  }
}

abstract class _Fixture implements Fixture {
  const factory _Fixture(
      {required final int? id,
      required final String? referee,
      required final String? timezone,
      required final String? date,
      required final int? timestamp,
      required final Periods periods,
      required final Venue venue,
      required final Status status}) = _$_Fixture;

  factory _Fixture.fromJson(Map<String, dynamic> json) = _$_Fixture.fromJson;

  @override
  int? get id;
  @override
  String? get referee;
  @override
  String? get timezone;
  @override
  String? get date;
  @override
  int? get timestamp;
  @override
  Periods get periods;
  @override
  Venue get venue;
  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$_FixtureCopyWith<_$_Fixture> get copyWith =>
      throw _privateConstructorUsedError;
}

Teams _$TeamsFromJson(Map<String, dynamic> json) {
  return _Teams.fromJson(json);
}

/// @nodoc
mixin _$Teams {
  Team get home => throw _privateConstructorUsedError;
  Team get away => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamsCopyWith<Teams> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamsCopyWith<$Res> {
  factory $TeamsCopyWith(Teams value, $Res Function(Teams) then) =
      _$TeamsCopyWithImpl<$Res, Teams>;
  @useResult
  $Res call({Team home, Team away});

  $TeamCopyWith<$Res> get home;
  $TeamCopyWith<$Res> get away;
}

/// @nodoc
class _$TeamsCopyWithImpl<$Res, $Val extends Teams>
    implements $TeamsCopyWith<$Res> {
  _$TeamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_value.copyWith(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Team,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Team,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get home {
    return $TeamCopyWith<$Res>(_value.home, (value) {
      return _then(_value.copyWith(home: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get away {
    return $TeamCopyWith<$Res>(_value.away, (value) {
      return _then(_value.copyWith(away: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TeamsCopyWith<$Res> implements $TeamsCopyWith<$Res> {
  factory _$$_TeamsCopyWith(_$_Teams value, $Res Function(_$_Teams) then) =
      __$$_TeamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team home, Team away});

  @override
  $TeamCopyWith<$Res> get home;
  @override
  $TeamCopyWith<$Res> get away;
}

/// @nodoc
class __$$_TeamsCopyWithImpl<$Res> extends _$TeamsCopyWithImpl<$Res, _$_Teams>
    implements _$$_TeamsCopyWith<$Res> {
  __$$_TeamsCopyWithImpl(_$_Teams _value, $Res Function(_$_Teams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? home = null,
    Object? away = null,
  }) {
    return _then(_$_Teams(
      home: null == home
          ? _value.home
          : home // ignore: cast_nullable_to_non_nullable
              as Team,
      away: null == away
          ? _value.away
          : away // ignore: cast_nullable_to_non_nullable
              as Team,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Teams implements _Teams {
  const _$_Teams({required this.home, required this.away});

  factory _$_Teams.fromJson(Map<String, dynamic> json) =>
      _$$_TeamsFromJson(json);

  @override
  final Team home;
  @override
  final Team away;

  @override
  String toString() {
    return 'Teams(home: $home, away: $away)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Teams &&
            (identical(other.home, home) || other.home == home) &&
            (identical(other.away, away) || other.away == away));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, home, away);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeamsCopyWith<_$_Teams> get copyWith =>
      __$$_TeamsCopyWithImpl<_$_Teams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamsToJson(
      this,
    );
  }
}

abstract class _Teams implements Teams {
  const factory _Teams({required final Team home, required final Team away}) =
      _$_Teams;

  factory _Teams.fromJson(Map<String, dynamic> json) = _$_Teams.fromJson;

  @override
  Team get home;
  @override
  Team get away;
  @override
  @JsonKey(ignore: true)
  _$$_TeamsCopyWith<_$_Teams> get copyWith =>
      throw _privateConstructorUsedError;
}

Periods _$PeriodsFromJson(Map<String, dynamic> json) {
  return _Periods.fromJson(json);
}

/// @nodoc
mixin _$Periods {
  int? get first => throw _privateConstructorUsedError;
  int? get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodsCopyWith<Periods> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodsCopyWith<$Res> {
  factory $PeriodsCopyWith(Periods value, $Res Function(Periods) then) =
      _$PeriodsCopyWithImpl<$Res, Periods>;
  @useResult
  $Res call({int? first, int? second});
}

/// @nodoc
class _$PeriodsCopyWithImpl<$Res, $Val extends Periods>
    implements $PeriodsCopyWith<$Res> {
  _$PeriodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeriodsCopyWith<$Res> implements $PeriodsCopyWith<$Res> {
  factory _$$_PeriodsCopyWith(
          _$_Periods value, $Res Function(_$_Periods) then) =
      __$$_PeriodsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? first, int? second});
}

/// @nodoc
class __$$_PeriodsCopyWithImpl<$Res>
    extends _$PeriodsCopyWithImpl<$Res, _$_Periods>
    implements _$$_PeriodsCopyWith<$Res> {
  __$$_PeriodsCopyWithImpl(_$_Periods _value, $Res Function(_$_Periods) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$_Periods(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Periods implements _Periods {
  const _$_Periods({required this.first, required this.second});

  factory _$_Periods.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodsFromJson(json);

  @override
  final int? first;
  @override
  final int? second;

  @override
  String toString() {
    return 'Periods(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Periods &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      __$$_PeriodsCopyWithImpl<_$_Periods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodsToJson(
      this,
    );
  }
}

abstract class _Periods implements Periods {
  const factory _Periods(
      {required final int? first, required final int? second}) = _$_Periods;

  factory _Periods.fromJson(Map<String, dynamic> json) = _$_Periods.fromJson;

  @override
  int? get first;
  @override
  int? get second;
  @override
  @JsonKey(ignore: true)
  _$$_PeriodsCopyWith<_$_Periods> get copyWith =>
      throw _privateConstructorUsedError;
}

Status _$StatusFromJson(Map<String, dynamic> json) {
  return _Status.fromJson(json);
}

/// @nodoc
mixin _$Status {
  String? get long => throw _privateConstructorUsedError;
  String? get short => throw _privateConstructorUsedError;
  int? get elapsed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusCopyWith<Status> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res, Status>;
  @useResult
  $Res call({String? long, String? short, int? elapsed});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res, $Val extends Status>
    implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = freezed,
    Object? short = freezed,
    Object? elapsed = freezed,
  }) {
    return _then(_value.copyWith(
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$$_StatusCopyWith(_$_Status value, $Res Function(_$_Status) then) =
      __$$_StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? long, String? short, int? elapsed});
}

/// @nodoc
class __$$_StatusCopyWithImpl<$Res>
    extends _$StatusCopyWithImpl<$Res, _$_Status>
    implements _$$_StatusCopyWith<$Res> {
  __$$_StatusCopyWithImpl(_$_Status _value, $Res Function(_$_Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? long = freezed,
    Object? short = freezed,
    Object? elapsed = freezed,
  }) {
    return _then(_$_Status(
      long: freezed == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String?,
      short: freezed == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String?,
      elapsed: freezed == elapsed
          ? _value.elapsed
          : elapsed // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Status implements _Status {
  const _$_Status(
      {required this.long, required this.short, required this.elapsed});

  factory _$_Status.fromJson(Map<String, dynamic> json) =>
      _$$_StatusFromJson(json);

  @override
  final String? long;
  @override
  final String? short;
  @override
  final int? elapsed;

  @override
  String toString() {
    return 'Status(long: $long, short: $short, elapsed: $elapsed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Status &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.elapsed, elapsed) || other.elapsed == elapsed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, long, short, elapsed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      __$$_StatusCopyWithImpl<_$_Status>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusToJson(
      this,
    );
  }
}

abstract class _Status implements Status {
  const factory _Status(
      {required final String? long,
      required final String? short,
      required final int? elapsed}) = _$_Status;

  factory _Status.fromJson(Map<String, dynamic> json) = _$_Status.fromJson;

  @override
  String? get long;
  @override
  String? get short;
  @override
  int? get elapsed;
  @override
  @JsonKey(ignore: true)
  _$$_StatusCopyWith<_$_Status> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;
  int? get season => throw _privateConstructorUsedError;
  String? get round => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? country,
      String? logo,
      String? flag,
      int? season,
      String? round});
}

/// @nodoc
class _$LeagueCopyWithImpl<$Res, $Val extends League>
    implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? logo = freezed,
    Object? flag = freezed,
    Object? season = freezed,
    Object? round = freezed,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$_LeagueCopyWith(_$_League value, $Res Function(_$_League) then) =
      __$$_LeagueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? country,
      String? logo,
      String? flag,
      int? season,
      String? round});
}

/// @nodoc
class __$$_LeagueCopyWithImpl<$Res>
    extends _$LeagueCopyWithImpl<$Res, _$_League>
    implements _$$_LeagueCopyWith<$Res> {
  __$$_LeagueCopyWithImpl(_$_League _value, $Res Function(_$_League) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? logo = freezed,
    Object? flag = freezed,
    Object? season = freezed,
    Object? round = freezed,
  }) {
    return _then(_$_League(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as int?,
      round: freezed == round
          ? _value.round
          : round // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_League implements _League {
  const _$_League(
      {required this.id,
      required this.name,
      required this.country,
      required this.logo,
      required this.flag,
      required this.season,
      required this.round});

  factory _$_League.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? country;
  @override
  final String? logo;
  @override
  final String? flag;
  @override
  final int? season;
  @override
  final String? round;

  @override
  String toString() {
    return 'League(id: $id, name: $name, country: $country, logo: $logo, flag: $flag, season: $season, round: $round)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_League &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.round, round) || other.round == round));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, country, logo, flag, season, round);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      __$$_LeagueCopyWithImpl<_$_League>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueToJson(
      this,
    );
  }
}

abstract class _League implements League {
  const factory _League(
      {required final int? id,
      required final String? name,
      required final String? country,
      required final String? logo,
      required final String? flag,
      required final int? season,
      required final String? round}) = _$_League;

  factory _League.fromJson(Map<String, dynamic> json) = _$_League.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get country;
  @override
  String? get logo;
  @override
  String? get flag;
  @override
  int? get season;
  @override
  String? get round;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      throw _privateConstructorUsedError;
}

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
  Map<String, int?> get halftime => throw _privateConstructorUsedError;
  Map<String, int?> get fulltime => throw _privateConstructorUsedError;
  Map<String, int?> get extratime => throw _privateConstructorUsedError;
  Map<String, int?> get penalty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call(
      {Map<String, int?> halftime,
      Map<String, int?> fulltime,
      Map<String, int?> extratime,
      Map<String, int?> penalty});
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halftime = null,
    Object? fulltime = null,
    Object? extratime = null,
    Object? penalty = null,
  }) {
    return _then(_value.copyWith(
      halftime: null == halftime
          ? _value.halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      fulltime: null == fulltime
          ? _value.fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      extratime: null == extratime
          ? _value.extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      penalty: null == penalty
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$_ScoreCopyWith(_$_Score value, $Res Function(_$_Score) then) =
      __$$_ScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, int?> halftime,
      Map<String, int?> fulltime,
      Map<String, int?> extratime,
      Map<String, int?> penalty});
}

/// @nodoc
class __$$_ScoreCopyWithImpl<$Res> extends _$ScoreCopyWithImpl<$Res, _$_Score>
    implements _$$_ScoreCopyWith<$Res> {
  __$$_ScoreCopyWithImpl(_$_Score _value, $Res Function(_$_Score) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? halftime = null,
    Object? fulltime = null,
    Object? extratime = null,
    Object? penalty = null,
  }) {
    return _then(_$_Score(
      halftime: null == halftime
          ? _value._halftime
          : halftime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      fulltime: null == fulltime
          ? _value._fulltime
          : fulltime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      extratime: null == extratime
          ? _value._extratime
          : extratime // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
      penalty: null == penalty
          ? _value._penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as Map<String, int?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Score implements _Score {
  const _$_Score(
      {required final Map<String, int?> halftime,
      required final Map<String, int?> fulltime,
      required final Map<String, int?> extratime,
      required final Map<String, int?> penalty})
      : _halftime = halftime,
        _fulltime = fulltime,
        _extratime = extratime,
        _penalty = penalty;

  factory _$_Score.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreFromJson(json);

  final Map<String, int?> _halftime;
  @override
  Map<String, int?> get halftime {
    if (_halftime is EqualUnmodifiableMapView) return _halftime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_halftime);
  }

  final Map<String, int?> _fulltime;
  @override
  Map<String, int?> get fulltime {
    if (_fulltime is EqualUnmodifiableMapView) return _fulltime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fulltime);
  }

  final Map<String, int?> _extratime;
  @override
  Map<String, int?> get extratime {
    if (_extratime is EqualUnmodifiableMapView) return _extratime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extratime);
  }

  final Map<String, int?> _penalty;
  @override
  Map<String, int?> get penalty {
    if (_penalty is EqualUnmodifiableMapView) return _penalty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_penalty);
  }

  @override
  String toString() {
    return 'Score(halftime: $halftime, fulltime: $fulltime, extratime: $extratime, penalty: $penalty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Score &&
            const DeepCollectionEquality().equals(other._halftime, _halftime) &&
            const DeepCollectionEquality().equals(other._fulltime, _fulltime) &&
            const DeepCollectionEquality()
                .equals(other._extratime, _extratime) &&
            const DeepCollectionEquality().equals(other._penalty, _penalty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_halftime),
      const DeepCollectionEquality().hash(_fulltime),
      const DeepCollectionEquality().hash(_extratime),
      const DeepCollectionEquality().hash(_penalty));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      __$$_ScoreCopyWithImpl<_$_Score>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreToJson(
      this,
    );
  }
}

abstract class _Score implements Score {
  const factory _Score(
      {required final Map<String, int?> halftime,
      required final Map<String, int?> fulltime,
      required final Map<String, int?> extratime,
      required final Map<String, int?> penalty}) = _$_Score;

  factory _Score.fromJson(Map<String, dynamic> json) = _$_Score.fromJson;

  @override
  Map<String, int?> get halftime;
  @override
  Map<String, int?> get fulltime;
  @override
  Map<String, int?> get extratime;
  @override
  Map<String, int?> get penalty;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      throw _privateConstructorUsedError;
}
