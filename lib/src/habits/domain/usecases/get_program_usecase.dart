import 'package:dartz/dartz.dart';

import 'package:habita_on_discount/core/errors/failures/failure.dart';
import 'package:habita_on_discount/core/usecase/usecase.dart';
import '../repositories/ihabit_repo.dart';

class GetProgram implements Usecase<String, String> {
  final IHabitRepo repository;

  const GetProgram({required this.repository});

  @override
  Future<Either<Failure, String>> call(String path) async {
    return await repository.getHabitProgram(path: path);
  }
}
