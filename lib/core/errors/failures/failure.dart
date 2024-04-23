import '../exceptions/server_exception.dart';

abstract class Failure {
  final String message;

  const Failure({required this.message});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message});

  factory ServerFailure.fromException(ServerException exception) {
    return ServerFailure(message: exception.message);
  }
}
