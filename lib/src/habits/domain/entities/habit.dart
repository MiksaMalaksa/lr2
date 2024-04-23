import 'package:habita_on_discount/core/enums/types.dart';

class Habit {
  final String id;
  final HabitType habitType;
  final String name;

  final bool isCompleted;
  final int highestStreak;
  final int currentStreak;
  final String? description;
  final int? waterTarget;
  final int? waterConsumed;
  final int? stepsTarget;
  final int? stepsProduced;
  final int? taskSteps;
  final int? completedSteps;
  final String? remainder;

  const Habit({
    required this.id,
    required this.habitType,
    required this.name,
    required this.isCompleted,
    required this.highestStreak,
    required this.currentStreak,
    this.description,
    this.waterTarget,
    this.waterConsumed,
    this.stepsTarget,
    this.stepsProduced,
    this.taskSteps,
    this.completedSteps,
    this.remainder,
  });

  factory Habit.base({required String id}) => Habit(
        id: id,
        habitType: HabitType.todo,
        name: '',
        description: '',
        isCompleted: false,
        highestStreak: 0,
        currentStreak: 0,
      );

  Habit copyWith({
    String? id,
    HabitType? habitType,
    String? name,
    bool? isCompleted,
    int? highestStreak,
    int? currentStreak,
    String? description,
    int? waterTarget,
    int? waterConsumed,
    int? stepsTarget,
    int? stepsProduced,
    int? taskSteps,
    int? completedSteps,
    String? taskStart,
    String? taskEnd,
    String? remainder,
  }) {
    return Habit(
      id: id ?? this.id,
      habitType: habitType ?? this.habitType,
      name: name ?? this.name,
      isCompleted: isCompleted ?? this.isCompleted,
      highestStreak: highestStreak ?? this.highestStreak,
      currentStreak: currentStreak ?? this.currentStreak,
      description: description ?? this.description,
      waterTarget: waterTarget ?? this.waterTarget,
      waterConsumed: waterConsumed ?? this.waterConsumed,
      stepsTarget: stepsTarget ?? this.stepsTarget,
      stepsProduced: stepsProduced ?? this.stepsProduced,
      taskSteps: taskSteps ?? this.taskSteps,
      completedSteps: completedSteps ?? this.completedSteps,
      remainder: remainder ?? this.remainder,
    );
  }

  Habit nullCopy({
    String? description,
    int? waterTarget,
    int? stepsTarget,
    int? taskSteps,
    String? remainder,
  }) {
    return Habit(
      id: id,
      habitType: habitType,
      name: name,
      isCompleted: isCompleted,
      highestStreak: highestStreak,
      currentStreak: currentStreak,
      waterConsumed: waterConsumed,
      stepsProduced: stepsProduced,
      taskSteps: taskSteps,
      completedSteps: completedSteps,
      remainder: remainder == '' ? null : this.remainder,
      stepsTarget: stepsTarget == -1 ? null : this.stepsTarget,
      description: description == '' ? null : this.description,
      waterTarget: waterTarget == -1 ? null : this.waterTarget,
    );
  }
}
