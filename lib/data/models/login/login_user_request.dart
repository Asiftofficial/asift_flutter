import 'package:asift_flutter/domain/entities/login/login_user.dart';
import 'package:equatable/equatable.dart';

class LoginUserRequest extends Equatable {
  final String email;
  final String password;

  const LoginUserRequest({
    required this.email,
    required this.password,
  });

  factory LoginUserRequest.fromEntity(LoginUser loginUser) =>
      LoginUserRequest(email: loginUser.email, password: loginUser.password);

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };

  @override
  List<Object?> get props => [email, password];
}
