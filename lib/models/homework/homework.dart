import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework.freezed.dart';
part 'homework.g.dart';

@freezed
class Homeworks with _$Homeworks {
  const factory Homeworks({
    String? id,
    required String title,
    required String content,
    @Default('') String date,
  }) = _Homeworks;

  factory Homeworks.fromJson(Map<String, dynamic> json) =>
      _$HomeworksFromJson(json);
}
