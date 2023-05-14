// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'headtohead_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeadToHeadModel _$HeadToHeadModelFromJson(Map<String, dynamic> json) {
  return _HeadToHeadModel.fromJson(json);
}

/// @nodoc
mixin _$HeadToHeadModel {
  String? get get => throw _privateConstructorUsedError;
  Map<String, dynamic> get parameters => throw _privateConstructorUsedError;
  List<dynamic> get errors => throw _privateConstructorUsedError;
  int? get results => throw _privateConstructorUsedError;
  Paging get paging => throw _privateConstructorUsedError;
  List<FixtureResponse> get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeadToHeadModelCopyWith<HeadToHeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeadToHeadModelCopyWith<$Res> {
  factory $HeadToHeadModelCopyWith(
          HeadToHeadModel value, $Res Function(HeadToHeadModel) then) =
      _$HeadToHeadModelCopyWithImpl<$Res, HeadToHeadModel>;
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
class _$HeadToHeadModelCopyWithImpl<$Res, $Val extends HeadToHeadModel>
    implements $HeadToHeadModelCopyWith<$Res> {
  _$HeadToHeadModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_HeadToHeadModelCopyWith<$Res>
    implements $HeadToHeadModelCopyWith<$Res> {
  factory _$$_HeadToHeadModelCopyWith(
          _$_HeadToHeadModel value, $Res Function(_$_HeadToHeadModel) then) =
      __$$_HeadToHeadModelCopyWithImpl<$Res>;
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
class __$$_HeadToHeadModelCopyWithImpl<$Res>
    extends _$HeadToHeadModelCopyWithImpl<$Res, _$_HeadToHeadModel>
    implements _$$_HeadToHeadModelCopyWith<$Res> {
  __$$_HeadToHeadModelCopyWithImpl(
      _$_HeadToHeadModel _value, $Res Function(_$_HeadToHeadModel) _then)
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
    return _then(_$_HeadToHeadModel(
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
class _$_HeadToHeadModel implements _HeadToHeadModel {
  const _$_HeadToHeadModel(
      {required this.get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required this.results,
      required this.paging,
      required final List<FixtureResponse> response})
      : _parameters = parameters,
        _errors = errors,
        _response = response;

  factory _$_HeadToHeadModel.fromJson(Map<String, dynamic> json) =>
      _$$_HeadToHeadModelFromJson(json);

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
    return 'HeadToHeadModel(get: $get, parameters: $parameters, errors: $errors, results: $results, paging: $paging, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeadToHeadModel &&
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
  _$$_HeadToHeadModelCopyWith<_$_HeadToHeadModel> get copyWith =>
      __$$_HeadToHeadModelCopyWithImpl<_$_HeadToHeadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeadToHeadModelToJson(
      this,
    );
  }
}

abstract class _HeadToHeadModel implements HeadToHeadModel {
  const factory _HeadToHeadModel(
      {required final String? get,
      required final Map<String, dynamic> parameters,
      required final List<dynamic> errors,
      required final int? results,
      required final Paging paging,
      required final List<FixtureResponse> response}) = _$_HeadToHeadModel;

  factory _HeadToHeadModel.fromJson(Map<String, dynamic> json) =
      _$_HeadToHeadModel.fromJson;

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
  _$$_HeadToHeadModelCopyWith<_$_HeadToHeadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
