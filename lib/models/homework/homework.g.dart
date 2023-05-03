// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'homework.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Homeworks _$$_HomeworksFromJson(Map<String, dynamic> json) => _$_Homeworks(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      date: json['date'] as String? ?? '',
    );

Map<String, dynamic> _$$_HomeworksToJson(_$_Homeworks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date,
    };
