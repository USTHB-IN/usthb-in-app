import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auth/services/authrepo.dart';
import '../../models/opportunities/opportunities.dart';
import '../../utils/opportunities_api.dart';

part 'opportunities_cubit.freezed.dart';
part 'opportunities_state.dart';

class OpportunitiesCubit extends Cubit<OpportunitiesState> {
  OpportunitiesCubit() : super(const OpportunitiesState.initial());

  void getPosts() async {
    emit(const OpportunitiesState.loading());
    try {
      final String? token = await AuthRepo.token;
      if (token == null) {
        emit(const OpportunitiesState.initial());
      } else {
        final opportunities = await OpportunitiesApi.getOpportunities(token);
        if (opportunities.isEmpty) {
          emit(const OpportunitiesState.error('No posts found'));
          return;
        } else {
          emit(OpportunitiesState.loaded(opportunities));
        }
      }
    } catch (e) {
      emit(OpportunitiesState.error(e.toString()));
    }
  }
}
