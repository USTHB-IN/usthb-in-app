// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homeworks _$$_HomeworksFromJson(Map<String, dynamic> json) => _$_Homeworks(
      id: json['id'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      subject: json['subject'] as String,
      teacher: json['teacher'] as String?,
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      submission: (json['submission'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deadline: json['deadline'] as String? ?? '',
    );

Map<String, dynamic> _$$_HomeworksToJson(_$_Homeworks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'subject': instance.subject,
      'teacher': instance.teacher,
      'group': instance.group,
      'submission': instance.submission,
      'deadline': instance.deadline,
    };
