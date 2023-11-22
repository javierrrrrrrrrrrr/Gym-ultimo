import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/feature/login/domain/usercase/login_use_case.dart';
import '../../../../core/utils/request/auth/login_request.dart';
import '../../domain/entities/auth.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  LoginBloc(this.loginUseCase) : super(const LoginState.initial()) {
    on<LoginEvent>(eventHandler);
  }

  Future<void> eventHandler(
    LoginEvent event,
    Emitter emit,
  ) async {
    event.when(
      loginButtomPress: (request) {},
    );
  }

  void loginButtomPress({required LoginRequest request}) {
    add(LoginEvent.loginButtomPress(request: request));
  }
}
