// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Homeworks _$HomeworksFromJson(Map<String, dynamic> json) {
  return _Homeworks.fromJson(json);
}

/// @nodoc
mixin _$Homeworks {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeworksCopyWith<Homeworks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworksCopyWith<$Res> {
  factory $HomeworksCopyWith(Homeworks value, $Res Function(Homeworks) then) =
      _$HomeworksCopyWithImpl<$Res, Homeworks>;
  @useResult
  $Res call({String? id, String title, String content, String date});
}

/// @nodoc
class _$HomeworksCopyWithImpl<$Res, $Val extends Homeworks>
    implements $HomeworksCopyWith<$Res> {
  _$HomeworksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? date = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeworksCopyWith<$Res> implements $HomeworksCopyWith<$Res> {
  factory _$$_HomeworksCopyWith(
          _$_Homeworks value, $Res Function(_$_Homeworks) then) =
      __$$_HomeworksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String title, String content, String date});
}

/// @nodoc
class __$$_HomeworksCopyWithImpl<$Res>
    extends _$HomeworksCopyWithImpl<$Res, _$_Homeworks>
    implements _$$_HomeworksCopyWith<$Res> {
  __$$_HomeworksCopyWithImpl(
      _$_Homeworks _value, $Res Function(_$_Homeworks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? content = null,
    Object? date = null,
  }) {
    return _then(_$_Homeworks(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Homeworks implements _Homeworks {
  const _$_Homeworks(
      {this.id, required this.title, required this.content, this.date = ''});

  factory _$_Homeworks.fromJson(Map<String, dynamic> json) =>
      _$$_HomeworksFromJson(json);

  @override
  final String? id;
  @override
  final String title;
  @override
  final String content;
  @override
  @JsonKey()
  final String date;

  @override
  String toString() {
    return 'Homeworks(id: $id, title: $title, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Homeworks &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeworksCopyWith<_$_Homeworks> get copyWith =>
      __$$_HomeworksCopyWithImpl<_$_Homeworks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeworksToJson(
      this,
    );
  }
}

abstract class _Homeworks implements Homeworks {
  const factory _Homeworks(
      {final String? id,
      required final String title,
      required final String content,
      final String date}) = _$_Homeworks;

  factory _Homeworks.fromJson(Map<String, dynamic> json) =
      _$_Homeworks.fromJson;

  @override
  String? get id;
  @override
  String get title;
  @override
  String get content;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_HomeworksCopyWith<_$_Homeworks> get copyWith =>
      throw _privateConstructorUsedError;
}
