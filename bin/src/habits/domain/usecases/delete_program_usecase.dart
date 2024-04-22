import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/ihabit_repo.dart';


class DeleteProgram implements Usecase<void, String> {
  final IHabitRepo repository;

  const DeleteProgram({required this.repository});

  @override
  Future<Either<Failure, void>> call(String path) async {
    return await repository.deleteHabitProgram(path: path);
  }
}
