// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TeamModel _$TeamModelFromJson(Map<String, dynamic> json) {
  return _TeamModel.fromJson(json);
}

/// @nodoc
mixin _$TeamModel {
  String get get => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<Response> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamModelCopyWith<TeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamModelCopyWith<$Res> {
  factory $TeamModelCopyWith(TeamModel value, $Res Function(TeamModel) then) =
      _$TeamModelCopyWithImpl<$Res, TeamModel>;
  @useResult
  $Res call(
      {String get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int results,
      Paging paging,
      List<Response> response});

  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class _$TeamModelCopyWithImpl<$Res, $Val extends TeamModel>
    implements $TeamModelCopyWith<$Res> {
  _$TeamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? get = null,
    Object? parameters = null,
    Object? errors = null,
    Object? results = null,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      get: null == get
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
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
abstract class _$$_TeamModelCopyWith<$Res> implements $TeamModelCopyWith<$Res> {
  factory _$$_TeamModelCopyWith(
          _$_TeamModel value, $Res Function(_$_TeamModel) then) =
      __$$_TeamModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String get,
      Map<String, dynamic> parameters,
      List<dynamic> errors,
      int results,
      Paging paging,
      List<Response> response});

  @override
  $PagingCopyWith<$Res> get paging;
}

/// @nodoc
class __$$_TeamModelCopyWithImpl<$Res>
    extends _$TeamModelCopyWithImpl<$Res, _$_TeamModel>
    implements _$$_TeamModelCopyWith<$Res> {
  __$$_TeamModelCopyWithImpl(
      _$_TeamModel _value, $Res Function(_$_TeamModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? get = null,
    Object? parameters = null,
    Object? errors = null,
    Object? results = null,
    Object? paging = null,
    Object? response = null,
  }) {
    return _then(_$_TeamModel(
      get: null == get
          ? _value.get
          : get // ignore: cast_nullable_to_non_nullable
              as String,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as int,
      paging: null == paging
          ? _value.paging
          : paging // ignore: cast_nullable_to_non_nullable
              as Paging,
      response: null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Response>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeamModel implements _TeamModel {
  const _$_TeamModel(
      {required this.get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<Response> response})
      : _parameters = parameters,
        _errors = errors,
        _response = response;

  factory _$_TeamModel.fromJson(Map<String, dynamic> json) =>
      _$$_TeamModelFromJson(json);

  @override
  final String get;
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
  final int results;
  @override
  final Paging paging;
  final List<Response> _response;
  @override
  List<Response> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'TeamModel(get: $get, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeamModel &&
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
  _$$_TeamModelCopyWith<_$_TeamModel> get copyWith =>
      __$$_TeamModelCopyWithImpl<_$_TeamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamModelToJson(
      this,
    );
  }
}

abstract class _TeamModel implements TeamModel {
  const factory _TeamModel(
      {required final String get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required final int results,
      required final Paging paging,
      required final List<Response> response}) = _$_TeamModel;

  factory _TeamModel.fromJson(Map<String, dynamic> json) =
      _$_TeamModel.fromJson;

  @override
  String get get;
  @override
  Map<String, dynamic> get parameters;
  @override
  List<dynamic> get errors;
  @override
  int get results;
  @override
  Paging get paging;
  @override
  List<Response> get response;
  @override
  @JsonKey(ignore: true)
  _$$_TeamModelCopyWith<_$_TeamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Paging _$PagingFromJson(Map<String, dynamic> json) {
  return _Paging.fromJson(json);
}

/// @nodoc
mixin _$Paging {
  int get current => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagingCopyWith<Paging> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagingCopyWith<$Res> {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) then) =
      _$PagingCopyWithImpl<$Res, Paging>;
  @useResult
  $Res call({int current, int total});
}

/// @nodoc
class _$PagingCopyWithImpl<$Res, $Val extends Paging>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$$_PagingCopyWith(_$_Paging value, $Res Function(_$_Paging) then) =
      __$$_PagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int current, int total});
}

/// @nodoc
class __$$_PagingCopyWithImpl<$Res>
    extends _$PagingCopyWithImpl<$Res, _$_Paging>
    implements _$$_PagingCopyWith<$Res> {
  __$$_PagingCopyWithImpl(_$_Paging _value, $Res Function(_$_Paging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_$_Paging(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Paging implements _Paging {
  const _$_Paging({required this.current, required this.total});

  factory _$_Paging.fromJson(Map<String, dynamic> json) =>
      _$$_PagingFromJson(json);

  @override
  final int current;
  @override
  final int total;

  @override
  String toString() {
    return 'Paging(current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Paging &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, current, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      __$$_PagingCopyWithImpl<_$_Paging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagingToJson(
      this,
    );
  }
}

abstract class _Paging implements Paging {
  const factory _Paging(
      {required final int current, required final int total}) = _$_Paging;

  factory _Paging.fromJson(Map<String, dynamic> json) = _$_Paging.fromJson;

  @override
  int get current;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$_PagingCopyWith<_$_Paging> get copyWith =>
      throw _privateConstructorUsedError;
}

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  Team get team => throw _privateConstructorUsedError;
  Venue get venue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call({Team team, Venue venue});

  $TeamCopyWith<$Res> get team;
  $VenueCopyWith<$Res> get venue;
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? venue = null,
  }) {
    return _then(_value.copyWith(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeamCopyWith<$Res> get team {
    return $TeamCopyWith<$Res>(_value.team, (value) {
      return _then(_value.copyWith(team: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VenueCopyWith<$Res> get venue {
    return $VenueCopyWith<$Res>(_value.venue, (value) {
      return _then(_value.copyWith(venue: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$$_ResponseCopyWith(
          _$_Response value, $Res Function(_$_Response) then) =
      __$$_ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Team team, Venue venue});

  @override
  $TeamCopyWith<$Res> get team;
  @override
  $VenueCopyWith<$Res> get venue;
}

/// @nodoc
class __$$_ResponseCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$_Response>
    implements _$$_ResponseCopyWith<$Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response _value, $Res Function(_$_Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? team = null,
    Object? venue = null,
  }) {
    return _then(_$_Response(
      team: null == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as Team,
      venue: null == venue
          ? _value.venue
          : venue // ignore: cast_nullable_to_non_nullable
              as Venue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Response implements _Response {
  const _$_Response({required this.team, required this.venue});

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final Team team;
  @override
  final Venue venue;

  @override
  String toString() {
    return 'Response(team: $team, venue: $venue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.venue, venue) || other.venue == venue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, team, venue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      __$$_ResponseCopyWithImpl<_$_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {required final Team team, required final Venue venue}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  Team get team;
  @override
  Venue get venue;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  int get founded => throw _privateConstructorUsedError;
  bool get national => throw _privateConstructorUsedError;
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
  $Res call(
      {int id,
      String name,
      String code,
      String country,
      int founded,
      bool national,
      String logo});
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
    Object? code = null,
    Object? country = null,
    Object? founded = null,
    Object? national = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      national: null == national
          ? _value.national
          : national // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call(
      {int id,
      String name,
      String code,
      String country,
      int founded,
      bool national,
      String logo});
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
    Object? code = null,
    Object? country = null,
    Object? founded = null,
    Object? national = null,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      national: null == national
          ? _value.national
          : national // ignore: cast_nullable_to_non_nullable
              as bool,
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
  const _$_Team(
      {required this.id,
      required this.name,
      required this.code,
      required this.country,
      required this.founded,
      required this.national,
      required this.logo});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String code;
  @override
  final String country;
  @override
  final int founded;
  @override
  final bool national;
  @override
  final String logo;

  @override
  String toString() {
    return 'Team(id: $id, name: $name, code: $code, country: $country, founded: $founded, national: $national, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.founded, founded) || other.founded == founded) &&
            (identical(other.national, national) ||
                other.national == national) &&
            (identical(other.logo, logo) || other.logo == logo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, code, country, founded, national, logo);

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
      required final String code,
      required final String country,
      required final int founded,
      required final bool national,
      required final String logo}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get code;
  @override
  String get country;
  @override
  int get founded;
  @override
  bool get national;
  @override
  String get logo;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}

Venue _$VenueFromJson(Map<String, dynamic> json) {
  return _Venue.fromJson(json);
}

/// @nodoc
mixin _$Venue {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  String get surface => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VenueCopyWith<Venue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VenueCopyWith<$Res> {
  factory $VenueCopyWith(Venue value, $Res Function(Venue) then) =
      _$VenueCopyWithImpl<$Res, Venue>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String city,
      int capacity,
      String surface,
      String image});
}

/// @nodoc
class _$VenueCopyWithImpl<$Res, $Val extends Venue>
    implements $VenueCopyWith<$Res> {
  _$VenueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? capacity = null,
    Object? surface = null,
    Object? image = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      surface: null == surface
          ? _value.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VenueCopyWith<$Res> implements $VenueCopyWith<$Res> {
  factory _$$_VenueCopyWith(_$_Venue value, $Res Function(_$_Venue) then) =
      __$$_VenueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String city,
      int capacity,
      String surface,
      String image});
}

/// @nodoc
class __$$_VenueCopyWithImpl<$Res> extends _$VenueCopyWithImpl<$Res, _$_Venue>
    implements _$$_VenueCopyWith<$Res> {
  __$$_VenueCopyWithImpl(_$_Venue _value, $Res Function(_$_Venue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? city = null,
    Object? capacity = null,
    Object? surface = null,
    Object? image = null,
  }) {
    return _then(_$_Venue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      surface: null == surface
          ? _value.surface
          : surface // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Venue implements _Venue {
  const _$_Venue(
      {required this.id,
      required this.name,
      required this.address,
      required this.city,
      required this.capacity,
      required this.surface,
      required this.image});

  factory _$_Venue.fromJson(Map<String, dynamic> json) =>
      _$$_VenueFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String city;
  @override
  final int capacity;
  @override
  final String surface;
  @override
  final String image;

  @override
  String toString() {
    return 'Venue(id: $id, name: $name, address: $address, city: $city, capacity: $capacity, surface: $surface, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Venue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.surface, surface) || other.surface == surface) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, address, city, capacity, surface, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VenueCopyWith<_$_Venue> get copyWith =>
      __$$_VenueCopyWithImpl<_$_Venue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VenueToJson(
      this,
    );
  }
}

abstract class _Venue implements Venue {
  const factory _Venue(
      {required final int id,
      required final String name,
      required final String address,
      required final String city,
      required final int capacity,
      required final String surface,
      required final String image}) = _$_Venue;

  factory _Venue.fromJson(Map<String, dynamic> json) = _$_Venue.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get city;
  @override
  int get capacity;
  @override
  String get surface;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$_VenueCopyWith<_$_Venue> get copyWith =>
      throw _privateConstructorUsedError;
}
