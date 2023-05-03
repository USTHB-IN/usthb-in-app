// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Group {
  String? get id => throw _privateConstructorUsedError;
  String get nom => throw _privateConstructorUsedError;
  String? get sectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call({String? id, String nom, String? sectionId});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nom = null,
    Object? sectionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$_SectionCopyWith(
          _$_Section value, $Res Function(_$_Section) then) =
      __$$_SectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String nom, String? sectionId});
}

/// @nodoc
class __$$_SectionCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$_Section>
    implements _$$_SectionCopyWith<$Res> {
  __$$_SectionCopyWithImpl(_$_Section _value, $Res Function(_$_Section) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nom = null,
    Object? sectionId = freezed,
  }) {
    return _then(_$_Section(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nom: null == nom
          ? _value.nom
          : nom // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section implements _Section {
  const _$_Section({this.id, required this.nom, this.sectionId});

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$$_SectionFromJson(json);

  @override
  final String? id;
  @override
  final String nom;
  @override
  final String? sectionId;

  @override
  String toString() {
    return 'Group(id: $id, nom: $nom, sectionId: $sectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Section &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nom, nom) || other.nom == nom) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nom, sectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      __$$_SectionCopyWithImpl<_$_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionToJson(
      this,
    );
  }
}

abstract class _Section implements Group {
  const factory _Section(
      {final String? id,
      required final String nom,
      final String? sectionId}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

  @override
  String? get id;
  @override
  String get nom;
  @override
  String? get sectionId;
  @override
  @JsonKey(ignore: true)
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
