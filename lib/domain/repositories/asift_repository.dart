import 'package:asift_flutter/domain/entities/login/logged_user.dart';
import 'package:asift_flutter/domain/entities/login/login_user.dart';
import 'package:dartz/dartz.dart';

import '../../../utils/failure.dart';

abstract class AsiftRepository {
  Future<Either<Failure, LoggedUser>> login(LoginUser loginUser);
}
