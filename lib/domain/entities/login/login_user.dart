import 'package:equatable/equatable.dart';

class LoginUser extends Equatable {
  final String email;
  final String password;

  const LoginUser({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
