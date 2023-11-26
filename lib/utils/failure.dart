import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final int statusCode;
  final String message;

  const Failure(this.statusCode, this.message);

  @override
  List<Object> get props => [statusCode, message];
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(500, message);
}

class ConnectionFailure extends Failure {
  ConnectionFailure(String message) : super(1, message);
}

class DatabaseFailure extends Failure {
  DatabaseFailure(String message) : super(2, message);
}

class CommonFailure extends Failure {
  CommonFailure(String message) : super(3, message);
}

class BadRequestFailure extends Failure {
  const BadRequestFailure(String message) : super(400, message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure(String message) : super(401, message);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure(String message) : super(403, message);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure(String message) : super(404, message);
}

class UnProcessableFailure extends Failure {
  const UnProcessableFailure(String message) : super(422, message);
}
