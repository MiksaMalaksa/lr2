import 'dart:convert';

import 'package:habita_on_discount/core/enums/types.dart';

import '../../domain/entities/habit.dart';


class HabitModel extends Habit {
  const HabitModel({
    required super.id,
    required super.habitType,
    required super.name,
    required super.isCompleted,
    required super.highestStreak,
    required super.currentStreak,
    super.description,
    super.waterTarget,
    super.waterConsumed,
    super.stepsTarget,
    super.stepsProduced,
    super.taskSteps,
    super.completedSteps,
    super.remainder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'habitType': habitType.toShortString(),
      'remainder': remainder,
      'name': name,
      'description': description,
      'isCompleted': isCompleted,
      'highestStreak': highestStreak,
      'currentStreak': currentStreak,
      'waterTarget': waterTarget,
      'waterConsumed': waterConsumed,
      'stepsTarget': stepsTarget,
      'stepsProduced': stepsProduced,
      'taskSteps': taskSteps,
      'completedSteps': completedSteps,
    };
  }

  factory HabitModel.fromMap(Map<String, dynamic> map) {
    return HabitModel(
      id: map['id'] as String,
      habitType: toHabitType(map['habitType']),
      name: map['name'] as String,
      isCompleted: map['isCompleted'] as bool,
      highestStreak: map['highestStreak'] as int,
      currentStreak: map['currentStreak'] as int,
      remainder: map['remainder'] != null ? map['remainder'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      waterTarget:
          map['waterTarget'] != null ? map['waterTarget'] as int : null,
      waterConsumed:
          map['waterConsumed'] != null ? map['waterConsumed'] as int : null,
      stepsTarget:
          map['stepsTarget'] != null ? map['stepsTarget'] as int : null,
      stepsProduced:
          map['stepsProduced'] != null ? map['stepsProduced'] as int : null,
      taskSteps: map['taskSteps'] != null ? map['taskSteps'] as int : null,
      completedSteps:
          map['completedSteps'] != null ? map['completedSteps'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HabitModel.fromJson(String source) =>
      HabitModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory HabitModel.fromHabit(Habit habit) => HabitModel(
        id: habit.id,
        habitType: habit.habitType,
        name: habit.name,
        description: habit.description,
        isCompleted: habit.isCompleted,
        highestStreak: habit.highestStreak,
        currentStreak: habit.currentStreak,
      );

  @override
  String toString() {
    return 'Habit(id: $id, habitType: $habitType, name: $name, description: $description, isCompleted: $isCompleted, highestStreak: $highestStreak, currentStreak: $currentStreak, waterTarget: $waterTarget, waterConsumed: $waterConsumed, stepsTarget: $stepsTarget, stepsProduced: $stepsProduced, taskSteps: $taskSteps, completedSteps: $completedSteps)';
  }
}
