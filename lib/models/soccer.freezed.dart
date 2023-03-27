// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'soccer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'code')
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'founded')
  int? get founded => throw _privateConstructorUsedError;
  @JsonKey(name: 'national')
  bool? get national => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'founded') int? founded,
      @JsonKey(name: 'national') bool? national,
      @JsonKey(name: 'logo') String? logo});
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
    Object? name = freezed,
    Object? code = freezed,
    Object? country = freezed,
    Object? founded = freezed,
    Object? national = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      founded: freezed == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int?,
      national: freezed == national
          ? _value.national
          : national // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'code') String? code,
      @JsonKey(name: 'country') String? country,
      @JsonKey(name: 'founded') int? founded,
      @JsonKey(name: 'national') bool? national,
      @JsonKey(name: 'logo') String? logo});
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
    Object? name = freezed,
    Object? code = freezed,
    Object? country = freezed,
    Object? founded = freezed,
    Object? national = freezed,
    Object? logo = freezed,
  }) {
    return _then(_$_Team(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      founded: freezed == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int?,
      national: freezed == national
          ? _value.national
          : national // ignore: cast_nullable_to_non_nullable
              as bool?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Team with DiagnosticableTreeMixin implements _Team {
  const _$_Team(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'code') this.code,
      @JsonKey(name: 'country') this.country,
      @JsonKey(name: 'founded') this.founded,
      @JsonKey(name: 'national') this.national,
      @JsonKey(name: 'logo') this.logo});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'code')
  final String? code;
  @override
  @JsonKey(name: 'country')
  final String? country;
  @override
  @JsonKey(name: 'founded')
  final int? founded;
  @override
  @JsonKey(name: 'national')
  final bool? national;
  @override
  @JsonKey(name: 'logo')
  final String? logo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Team(id: $id, name: $name, code: $code, country: $country, founded: $founded, national: $national, logo: $logo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Team'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('country', country))
      ..add(DiagnosticsProperty('founded', founded))
      ..add(DiagnosticsProperty('national', national))
      ..add(DiagnosticsProperty('logo', logo));
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
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'code') final String? code,
      @JsonKey(name: 'country') final String? country,
      @JsonKey(name: 'founded') final int? founded,
      @JsonKey(name: 'national') final bool? national,
      @JsonKey(name: 'logo') final String? logo}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'code')
  String? get code;
  @override
  @JsonKey(name: 'country')
  String? get country;
  @override
  @JsonKey(name: 'founded')
  int? get founded;
  @override
  @JsonKey(name: 'national')
  bool? get national;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}
