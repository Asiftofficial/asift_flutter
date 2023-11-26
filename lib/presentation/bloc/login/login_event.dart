import 'package:asift_flutter/domain/entities/login/login_user.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class DoLogin extends LoginEvent {
  final LoginUser loginUser;

  const DoLogin(this.loginUser);

  @override
  List<Object?> get props => [loginUser];
}
