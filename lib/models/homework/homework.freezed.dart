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
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;
  Group? get group => throw _privateConstructorUsedError;
  List<String> get submission => throw _privateConstructorUsedError;
  String get deadline => throw _privateConstructorUsedError;

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
  $Res call(
      {String? id,
      String name,
      String description,
      String subject,
      String? teacher,
      Group? group,
      List<String> submission,
      String deadline});

  $GroupCopyWith<$Res>? get group;
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
    Object? name = null,
    Object? description = null,
    Object? subject = null,
    Object? teacher = freezed,
    Object? group = freezed,
    Object? submission = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      submission: null == submission
          ? _value.submission
          : submission // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeworksCopyWith<$Res> implements $HomeworksCopyWith<$Res> {
  factory _$$_HomeworksCopyWith(
          _$_Homeworks value, $Res Function(_$_Homeworks) then) =
      __$$_HomeworksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      String subject,
      String? teacher,
      Group? group,
      List<String> submission,
      String deadline});

  @override
  $GroupCopyWith<$Res>? get group;
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
    Object? name = null,
    Object? description = null,
    Object? subject = null,
    Object? teacher = freezed,
    Object? group = freezed,
    Object? submission = null,
    Object? deadline = null,
  }) {
    return _then(_$_Homeworks(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      submission: null == submission
          ? _value._submission
          : submission // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Homeworks implements _Homeworks {
  const _$_Homeworks(
      {this.id,
      required this.name,
      required this.description,
      required this.subject,
      this.teacher,
      this.group,
      final List<String> submission = const [],
      this.deadline = ''})
      : _submission = submission;

  factory _$_Homeworks.fromJson(Map<String, dynamic> json) =>
      _$$_HomeworksFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String subject;
  @override
  final String? teacher;
  @override
  final Group? group;
  final List<String> _submission;
  @override
  @JsonKey()
  List<String> get submission {
    if (_submission is EqualUnmodifiableListView) return _submission;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_submission);
  }

  @override
  @JsonKey()
  final String deadline;

  @override
  String toString() {
    return 'Homeworks(id: $id, name: $name, description: $description, subject: $subject, teacher: $teacher, group: $group, submission: $submission, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Homeworks &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.teacher, teacher) || other.teacher == teacher) &&
            (identical(other.group, group) || other.group == group) &&
            const DeepCollectionEquality()
                .equals(other._submission, _submission) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      subject,
      teacher,
      group,
      const DeepCollectionEquality().hash(_submission),
      deadline);

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
      required final String name,
      required final String description,
      required final String subject,
      final String? teacher,
      final Group? group,
      final List<String> submission,
      final String deadline}) = _$_Homeworks;

  factory _Homeworks.fromJson(Map<String, dynamic> json) =
      _$_Homeworks.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get subject;
  @override
  String? get teacher;
  @override
  Group? get group;
  @override
  List<String> get submission;
  @override
  String get deadline;
  @override
  @JsonKey(ignore: true)
  _$$_HomeworksCopyWith<_$_Homeworks> get copyWith =>
      throw _privateConstructorUsedError;
}
