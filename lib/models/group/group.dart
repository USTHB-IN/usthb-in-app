import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class Group with _$Group {
  const factory Group({
    String? id,
    required String nom,
    String? sectionId,
  }) = _Section;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
