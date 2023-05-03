import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../auth/services/authrepo.dart';
import '../../models/announcements/announcements.dart';
import '../../utils/announcements_api.dart';

part 'announcements_cubit.freezed.dart';
part 'announcements_state.dart';

class AnnouncementsCubit extends Cubit<AnnouncementsState> {
  AnnouncementsCubit() : super(const AnnouncementsState.initial());

  void getPosts() async {
    emit(const AnnouncementsState.loading());
    try {
      final String? token = await AuthRepo.token;
      if (token == null) {
        emit(const AnnouncementsState.initial());
      } else {
        final posts = await AnnouncementsApi.getPosts(token);
        if (posts.isEmpty) {
          emit(const AnnouncementsState.error('No posts found'));
          return;
        } else {
          emit(AnnouncementsState.loaded(posts));
        }
      }
    } catch (e) {
      emit(AnnouncementsState.error(e.toString()));
    }
  }
}
