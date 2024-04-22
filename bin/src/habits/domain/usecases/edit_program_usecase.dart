import 'package:dartz/dartz.dart';
import '../../../../core/enums/types.dart';
import '../../../../core/errors/failures/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/ihabit_repo.dart';

class EditProgram implements Usecase<void, EditProgramParams> {
  final IHabitRepo repository;

  const EditProgram({required this.repository});

  @override
  Future<Either<Failure, void>> call(EditProgramParams params) async {
    return await repository.editHabitProgram(
      path: params.path,
      aim: params.aim,
      completedSteps: params.completedSteps,
      habitDescription: params.habitDescription,
      habitName: params.habitName,
      habitType: params.habitType,
      isCompletedHabit: params.isCompletedHabit,
      muatable: params.muatable,
      name: params.name,
      programEnd: params.programEnd,
      programStart: params.programStart,
      reminder: params.reminder,
      stepsProduced: params.stepsProduced,
      stepsTarget: params.stepsTarget,
      taskSteps: params.taskSteps,
      waterConsumed: params.waterConsumed,
      waterTarget: params.waterTarget,
      weekday: params.weekday,
    );
  }
}

class EditProgramParams {
  final String path;
  final int? weekday;
  final String? name;
  final String? reminder;
  final String? aim;
  final bool? muatable;
  final String? programEnd;
  final String? programStart;

  final HabitType? habitType;
  final String? habitName;
  final String? habitDescription;
  final bool? isCompletedHabit;
  final double? waterTarget;
  final double? waterConsumed;
  final int? stepsTarget;
  final int? stepsProduced;
  final int? taskSteps;
  final int? completedSteps;

  const EditProgramParams({
    required this.path,
    this.weekday,
    this.programStart,
    this.name,
    this.reminder,
    this.aim,
    this.muatable,
    this.programEnd,
    this.habitType,
    this.habitName,
    this.habitDescription,
    this.isCompletedHabit,
    this.waterTarget,
    this.waterConsumed,
    this.stepsTarget,
    this.stepsProduced,
    this.taskSteps,
    this.completedSteps,
  });
}
