import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcements.freezed.dart';
part 'announcements.g.dart';

@freezed
class Announcements with _$Announcements {
  const factory Announcements({
    String? id,
    required String title,
    required String content,
    String? date,
  }) = _Announcements;

  factory Announcements.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementsFromJson(json);
}
