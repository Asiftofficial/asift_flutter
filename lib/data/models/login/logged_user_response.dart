import 'package:asift_flutter/domain/entities/login/logged_user.dart';
import 'package:equatable/equatable.dart';

class LoggedUserResponse extends Equatable {
  final bool success;
  final String message;
  final String? name;
  final String? access_token;
  final String? refreshToken;

  const LoggedUserResponse({
    required this.message,
    required this.name,
    required this.access_token,
    required this.refreshToken,
    required this.success,
  });

  factory LoggedUserResponse.fromJson(Map<String, dynamic> json) =>
      LoggedUserResponse(
        success: json['success'],
        message: json['message'],
        access_token: json['access_token'],
        refreshToken: json['refresh_token'],
        name: json['name'],
      );

  Map<String, dynamic> toJson() => {
        'success': success,
        'message': message,
        'access_token': access_token,
        'refresh_token': refreshToken,
        'name': name,
      };

  LoggedUser toEntity() => LoggedUser(
        success: success,
        message: message,
        access_token: access_token ?? '',
        refreshToken: refreshToken ?? '',
        name: name ?? '',
      );

  @override
  List<Object?> get props => [
        success,
        message,
        access_token,
        refreshToken,
        name,
      ];
}
