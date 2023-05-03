// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opportunities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Opportunities _$OpportunitiesFromJson(Map<String, dynamic> json) {
  return _Opportunities.fromJson(json);
}

/// @nodoc
mixin _$Opportunities {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  OpportunitiesType get type => throw _privateConstructorUsedError;
  String get imgPath => throw _privateConstructorUsedError;
  String get club => throw _privateConstructorUsedError;
  String get clubLogo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpportunitiesCopyWith<Opportunities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpportunitiesCopyWith<$Res> {
  factory $OpportunitiesCopyWith(
          Opportunities value, $Res Function(Opportunities) then) =
      _$OpportunitiesCopyWithImpl<$Res, Opportunities>;
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      String link,
      OpportunitiesType type,
      String imgPath,
      String club,
      String clubLogo});
}

/// @nodoc
class _$OpportunitiesCopyWithImpl<$Res, $Val extends Opportunities>
    implements $OpportunitiesCopyWith<$Res> {
  _$OpportunitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? link = null,
    Object? type = null,
    Object? imgPath = null,
    Object? club = null,
    Object? clubLogo = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OpportunitiesType,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String,
      clubLogo: null == clubLogo
          ? _value.clubLogo
          : clubLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpportunitiesCopyWith<$Res>
    implements $OpportunitiesCopyWith<$Res> {
  factory _$$_OpportunitiesCopyWith(
          _$_Opportunities value, $Res Function(_$_Opportunities) then) =
      __$$_OpportunitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String title,
      String description,
      String link,
      OpportunitiesType type,
      String imgPath,
      String club,
      String clubLogo});
}

/// @nodoc
class __$$_OpportunitiesCopyWithImpl<$Res>
    extends _$OpportunitiesCopyWithImpl<$Res, _$_Opportunities>
    implements _$$_OpportunitiesCopyWith<$Res> {
  __$$_OpportunitiesCopyWithImpl(
      _$_Opportunities _value, $Res Function(_$_Opportunities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? link = null,
    Object? type = null,
    Object? imgPath = null,
    Object? club = null,
    Object? clubLogo = null,
  }) {
    return _then(_$_Opportunities(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OpportunitiesType,
      imgPath: null == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String,
      club: null == club
          ? _value.club
          : club // ignore: cast_nullable_to_non_nullable
              as String,
      clubLogo: null == clubLogo
          ? _value.clubLogo
          : clubLogo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Opportunities implements _Opportunities {
  const _$_Opportunities(
      {this.id,
      required this.title,
      required this.description,
      required this.link,
      required this.type,
      required this.imgPath,
      required this.club,
      required this.clubLogo});

  factory _$_Opportunities.fromJson(Map<String, dynamic> json) =>
      _$$_OpportunitiesFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String link;
  @override
  final OpportunitiesType type;
  @override
  final String imgPath;
  @override
  final String club;
  @override
  final String clubLogo;

  @override
  String toString() {
    return 'Opportunities(id: $id, title: $title, description: $description, link: $link, type: $type, imgPath: $imgPath, club: $club, clubLogo: $clubLogo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Opportunities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath) &&
            (identical(other.club, club) || other.club == club) &&
            (identical(other.clubLogo, clubLogo) ||
                other.clubLogo == clubLogo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, link, type, imgPath, club, clubLogo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpportunitiesCopyWith<_$_Opportunities> get copyWith =>
      __$$_OpportunitiesCopyWithImpl<_$_Opportunities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OpportunitiesToJson(
      this,
    );
  }
}

abstract class _Opportunities implements Opportunities {
  const factory _Opportunities(
      {final String? id,
      required final String title,
      required final String description,
      required final String link,
      required final OpportunitiesType type,
      required final String imgPath,
      required final String club,
      required final String clubLogo}) = _$_Opportunities;

  factory _Opportunities.fromJson(Map<String, dynamic> json) =
      _$_Opportunities.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get link;
  @override
  OpportunitiesType get type;
  @override
  String get imgPath;
  @override
  String get club;
  @override
  String get clubLogo;
  @override
  @JsonKey(ignore: true)
  _$$_OpportunitiesCopyWith<_$_Opportunities> get copyWith =>
      throw _privateConstructorUsedError;
}
