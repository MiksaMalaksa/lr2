import 'package:dartz/dartz.dart';

import '../../../../core/enums/types.dart';
import '../../../../core/errors/failures/failure.dart';
import '../../domain/entities/habit_program.dart';
import '../../domain/repositories/ihabit_repo.dart';
import '../datasources/ihabit_datasource.dart';

class HabitRepoImpl implements IHabitRepo {
  final IHabitDataSource habitDataSource;

  const HabitRepoImpl({required this.habitDataSource});

  @override
  Future<Either<Failure, void>> createHabitProgram(
      {required HabitProgram program, required String path}) async {
    try {
      await habitDataSource.createHabitProgram(program: program, path: path);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteHabitProgram(
      {required String path}) async {
    try {
      await habitDataSource.deleteHabitProgram(path: path);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> editHabitProgram({
    required String path,
    int? weekday,
    String? name,
    String? reminder,
    String? aim,
    bool? muatable,
    String? programEnd,
    String? programStart,
    HabitType? habitType,
    String? habitName,
    String? habitDescription,
    bool? isCompletedHabit,
    double? waterTarget,
    double? waterConsumed,
    int? stepsTarget,
    int? stepsProduced,
    int? taskSteps,
    int? completedSteps,
  }) async {
    try {
      await habitDataSource.editHabitProgram(
        path: path,
        aim: aim,
        completedSteps: completedSteps,
        habitDescription: habitDescription,
        habitName: habitName,
        habitType: habitType,
        isCompletedHabit: isCompletedHabit,
        muatable: muatable,
        name: name,
        programEnd: programEnd,
        programStart: programStart,
        reminder: reminder,
        stepsProduced: stepsProduced,
        stepsTarget: stepsTarget,
        taskSteps: taskSteps,
        waterConsumed: waterConsumed,
        waterTarget: waterTarget,
        weekday: weekday,
      );
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> getHabitProgram(
      {required String path}) async {
    try {
      final program = await habitDataSource.getHabitProgram(path: path);
      return Right(program);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
