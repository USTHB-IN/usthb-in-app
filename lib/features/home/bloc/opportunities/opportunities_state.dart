part of 'opportunities_cubit.dart';

@freezed
class OpportunitiesState with _$OpportunitiesState {
  const factory OpportunitiesState.initial() = _Initial;
  const factory OpportunitiesState.loading() = _Loading;
  const factory OpportunitiesState.loaded(List<Opportunities> posts) = _Loaded;
  const factory OpportunitiesState.error(String message) = _Error;
}
