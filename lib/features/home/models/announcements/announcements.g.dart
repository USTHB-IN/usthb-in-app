// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcements _$$_AnnouncementsFromJson(Map<String, dynamic> json) =>
    _$_Announcements(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_AnnouncementsToJson(_$_Announcements instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'date': instance.date,
    };
