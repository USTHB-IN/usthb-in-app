import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:usthbin/features/auth/services/authrepo.dart';
import 'package:usthbin/models/homework/homework.dart';
import 'package:usthbin/shared/services/homework_api.dart';

part 'homework_cubit.freezed.dart';
part 'homeworks_state.dart';

class HomeworksCubit extends Cubit<HomeworkState> {
  HomeworksCubit() : super(const HomeworkState.initial());

  void getPosts() async {
    emit(const HomeworkState.loading());
    try {
      final String? token = await AuthRepo.token;
      if (token == null) {
        emit(const HomeworkState.initial());
      } else {
        final posts = await HomeworksApi.getHomeworks(token);
        if (posts.isEmpty) {
          emit(const HomeworkState.error('No posts found'));
          return;
        } else {
          emit(HomeworkState.loaded(posts));
        }
      }
    } catch (e) {
      emit(HomeworkState.error(e.toString()));
    }
  }
}
