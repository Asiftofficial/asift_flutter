import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String message;
  final String name;
  final String access_token;
  final String refreshToken;
  final bool success;

  const LoggedUser({
    required this.message,
    required this.name,
    required this.access_token,
    required this.refreshToken,
    required this.success,
  });

  @override
  List<Object?> get props =>
      [message, access_token, name, refreshToken, success];
}
