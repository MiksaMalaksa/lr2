import 'package:habita_on_discount/core/enums/types.dart';

import '../../domain/entities/habit_program.dart';

abstract interface class IHabitDataSource {
  Future<String> getHabitProgram({required String path});

  Future<void> createHabitProgram(
      {required HabitProgram program, required String path});

  Future<void> deleteHabitProgram({required String path});

  Future<void> editHabitProgram({
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
