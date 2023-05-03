part of 'announcements_cubit.dart';

@freezed
class AnnouncementsState with _$AnnouncementsState {
  const factory AnnouncementsState.initial() = _Initial;
  const factory AnnouncementsState.loading() = _Loading;
  const factory AnnouncementsState.loaded(List<Announcements> posts) = _Loaded;
  const factory AnnouncementsState.error(String message) = _Error;
}
