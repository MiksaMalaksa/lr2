import 'package:dartz/dartz.dart';
import 'package:habita_on_discount/core/enums/types.dart';
import 'package:habita_on_discount/core/errors/failures/failure.dart';
import '../entities/habit_program.dart';

abstract interface class IHabitRepo {
  Future<Either<Failure, String>> getHabitProgram({required String path});

  Future<Either<Failure, void>> createHabitProgram(
      {required HabitProgram program, required String path});

  Future<Either<Failure, void>> deleteHabitProgram({required String path});

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
  });
}
