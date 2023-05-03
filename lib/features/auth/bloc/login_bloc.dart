import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:usthbin/bloc/authbloc/auth_bloc.dart';
import 'package:usthbin/features/auth/services/authrepo.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthBloc authBloc;
  LoginBloc(
    this.authBloc,
  ) : super(const LoginState.initial()) {
    on<LoginEvent>((event, emit) {
      event.map(login: _login);
    });
  }
  FutureOr<void> _login(
    LoginEvent event,
  ) async {
    Response? res;
    try {
      emit(const LoginState.loading());
      res = await AuthRepo.login(event.email, event.password);

      if (res.statusCode != 200) {
        emit(LoginState.failure(res.data['error']));
        return;
      }
      emit(const LoginState.success());
      authBloc.add(AuthEvent.loggedIn(
        res.data['user'],
        res.data['token'],
      ));
    } catch (e) {
      emit(LoginState.failure(
          res != null ? res.data['error'] ?? 'Login Failed' : 'Login Failed'));
      print(e);
    }
  }
}
