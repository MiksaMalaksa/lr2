import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/ihabit_repo.dart';

class GetProgram implements Usecase<String, String> {
  final IHabitRepo repository;

  const GetProgram({required this.repository});

  @override
  Future<Either<Failure, String>> call(String path) async {
    return await repository.getHabitProgram(path: path);
  }
}
