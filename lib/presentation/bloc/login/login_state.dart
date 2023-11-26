import 'package:asift_flutter/domain/entities/login/logged_user.dart';
import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object?> get props => [];
}

class LoginEmpty extends LoginState {}

class LoginLoading extends LoginState {}

class LoginHasData extends LoginState {
  final LoggedUser loggedUser;

  const LoginHasData(this.loggedUser);

  @override
  List<Object?> get props => [loggedUser];
}

class LoginError extends LoginState {
  final String message;

  const LoginError(this.message);

  @override
  List<Object?> get props => [message];
}
