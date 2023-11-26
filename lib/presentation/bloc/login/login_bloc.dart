import 'package:asift_flutter/domain/usecases/login/login_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(LoginEmpty()) {
    on<DoLogin>((event, emit) async {
      final loginUser = event.loginUser;

      emit(LoginLoading());

      final result = await _loginUseCase.execute(loginUser);

      result.fold((l) {
        emit(LoginError(l.message));
      }, (r) {
        emit(LoginHasData(r));
      });
    });
  }
}
