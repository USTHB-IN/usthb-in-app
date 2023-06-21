import 'package:freezed_annotation/freezed_annotation.dart';

import '../group/group.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

@freezed
class Homeworks with _$Homeworks {
  const factory Homeworks({
    String? id,
    required String name,
    required String description,
    required String subject,
    String? teacher,
    Group? group,
    @Default([]) List<String> submission,
    @Default('') String deadline,
  }) = _Homeworks;

  factory Homeworks.fromJson(Map<String, dynamic> json) =>
      _$HomeworksFromJson(json);
}
