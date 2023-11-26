import 'exception.dart';

class StatusCodeHandler {
  static checkStatusCode(int status, String message) {
    if (status == 400) {
      throw BadRequestException(message);
    } else if (status == 401) {
      throw UnauthorizedException(message);
    } else if (status == 403) {
      throw ForbiddenException(message);
    } else if (status == 404) {
      throw NotFoundException(message);
    } else if (status == 422) {
      throw UnProcessableException(message);
    } else {
      throw ServerException();
    }
  }
}
