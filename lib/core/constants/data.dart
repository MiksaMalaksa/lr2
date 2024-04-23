import '../../src/habits/domain/entities/habit.dart';
import '../../src/habits/domain/entities/habit_day.dart';
import '../../src/habits/domain/entities/habit_program.dart';
import '../enums/types.dart';

final habit = Habit(
    id: '1',
    habitType: HabitType.notes,
    isCompleted: false,
    waterTarget: 500,
    waterConsumed: 200,
    stepsTarget: 7000,
    stepsProduced: 1000,
    taskSteps: 3,
    completedSteps: 1,
    currentStreak: 3,
    description: 'Ok',
    highestStreak: 456,
    name: 'e');

final habitDay = HabitDay(
  weekday: 1,
  habits: [habit, habit],
);

final habitProgram = HabitProgram(
  habitDays: [habitDay, habitDay],
  name: 'Be',
  description: 'Be something',
  muatable: true,
  programStart: '21/10/2021',
  programEnd: '28/10/2021',
);
