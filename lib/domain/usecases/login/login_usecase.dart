import 'package:asift_flutter/domain/entities/login/logged_user.dart';
import 'package:asift_flutter/domain/entities/login/login_user.dart';
import 'package:asift_flutter/domain/repositories/asift_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../utils/failure.dart';

class LoginUseCase {
  final AsiftRepository repository;

  LoginUseCase(this.repository);

  Future<Either<Failure, LoggedUser>> execute(LoginUser loginUser) {
    return repository.login(loginUser);
  }
}
