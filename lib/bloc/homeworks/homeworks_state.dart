part of 'homework_cubit.dart';

@freezed
class HomeworkState with _$HomeworkState {
  const factory HomeworkState.initial() = _Initial;
  const factory HomeworkState.loading() = _Loading;
  const factory HomeworkState.loaded(List<Homeworks> posts) = _Loaded;
  const factory HomeworkState.error(String message) = _Error;
}
