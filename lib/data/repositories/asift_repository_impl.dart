import 'dart:io';
import 'package:asift_flutter/data/models/login/login_user_request.dart';
import 'package:asift_flutter/data/sources/asift_remote_data_source.dart';
import 'package:asift_flutter/domain/entities/login/logged_user.dart';
import 'package:asift_flutter/domain/entities/login/login_user.dart';
import 'package:asift_flutter/domain/repositories/asift_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

import '../../utils/exception.dart';
import '../../utils/failure.dart';

class AsiftRepositoryImpl implements AsiftRepository {
  final AsiftRemoteDataSource remoteDataSource;

  AsiftRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, LoggedUser>> login(LoginUser loginUser) async {
    try {
      final result =
          await remoteDataSource.login(LoginUserRequest.fromEntity(loginUser));
      return Right(result.toEntity());
    } on ServerException {
      return Left(ServerFailure('Maaf terjadi kesalahan'));
    } on SocketException {
      return Left(ConnectionFailure('Gagal terhubung ke jaringan'));
    } on ClientException {
      return Left(ConnectionFailure('Gagal terhubung ke jaringan'));
    } on TlsException catch (e) {
      return Left(CommonFailure('Certificated not valid\n${e.message}'));
    } on BadRequestException catch (e) {
      return Left(BadRequestFailure(e.message));
    } on UnauthorizedException catch (e) {
      return Left(UnauthorizedFailure(e.message));
    } on ForbiddenException catch (e) {
      return Left(ForbiddenFailure(e.message));
    } on NotFoundException catch (e) {
      return Left(NotFoundFailure(e.message));
    } catch (e) {
      return Left(CommonFailure(e.toString()));
    }
  }
}
