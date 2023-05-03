import 'package:freezed_annotation/freezed_annotation.dart';

part 'opportunities.freezed.dart';
part 'opportunities.g.dart';

enum OpportunitiesType {
  Bootcamp,
  Competition,
  Conference,
  Internship,
  Scholarship,
  Workshop,
  Other,
}

@freezed
class Opportunities with _$Opportunities {
  const factory Opportunities({
    String? id,
    required String title,
    required String description,
    required String link,
    required OpportunitiesType type,
    required String imgPath,
    required String club,
    required String clubLogo,
  }) = _Opportunities;

  factory Opportunities.fromJson(Map<String, dynamic> json) =>
      _$OpportunitiesFromJson(json);
}
