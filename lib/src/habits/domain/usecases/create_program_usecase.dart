import 'package:dartz/dartz.dart';
import 'package:habita_on_discount/core/errors/failures/failure.dart';
import 'package:habita_on_discount/core/usecase/usecase.dart';

import '../entities/habit_program.dart';
import '../repositories/ihabit_repo.dart';

class CreateProgram implements Usecase<void, CreateProgramParams> {
  final IHabitRepo repository;

  const CreateProgram({required this.repository});

  @override
  Future<Either<Failure, void>> call(CreateProgramParams params) async {
    return await repository.createHabitProgram(program: params.program, path: params.path);
  }
}

class CreateProgramParams {
  final HabitProgram program;
  final String path;

  const CreateProgramParams({required this.program, required this.path});
}
