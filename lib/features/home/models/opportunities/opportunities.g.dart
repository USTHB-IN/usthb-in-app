// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Opportunities _$$_OpportunitiesFromJson(Map<String, dynamic> json) =>
    _$_Opportunities(
      id: json['id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      link: json['link'] as String,
      type: $enumDecode(_$OpportunitiesTypeEnumMap, json['type']),
      imgPath: json['imgPath'] as String,
      club: json['club'] as String,
      clubLogo: json['clubLogo'] as String,
    );

Map<String, dynamic> _$$_OpportunitiesToJson(_$_Opportunities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'link': instance.link,
      'type': _$OpportunitiesTypeEnumMap[instance.type]!,
      'imgPath': instance.imgPath,
      'club': instance.club,
      'clubLogo': instance.clubLogo,
    };

const _$OpportunitiesTypeEnumMap = {
  OpportunitiesType.Bootcamp: 'Bootcamp',
  OpportunitiesType.Competition: 'Competition',
  OpportunitiesType.Conference: 'Conference',
  OpportunitiesType.Internship: 'Internship',
  OpportunitiesType.Scholarship: 'Scholarship',
  OpportunitiesType.Workshop: 'Workshop',
  OpportunitiesType.Other: 'Other',
};
