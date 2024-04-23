import 'package:dartz/dartz.dart';

import '../errors/failures/failure.dart';

abstract interface class Usecase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
