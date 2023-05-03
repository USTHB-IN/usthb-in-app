import 'package:freezed_annotation/freezed_annotation.dart';

import '../group/group.dart';
import '../section/section.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class User with _$User {
  const factory User({
    String? id,
    required String nom,
    required String prenom,
    String? email,
    String? password,
    String? token,
    @Default([]) List<Section> sections,
    @Default([]) List<Group> groups,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  factory User.empty() => const User(
        id: '',
        nom: '',
        prenom: '',
        email: '',
        password: '',
        token: '',
      );
}
