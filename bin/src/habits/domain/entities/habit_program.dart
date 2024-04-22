import 'package:intl/intl.dart';

import '../../../../core/constants/min_dur.dart';
import 'habit_day.dart';

class HabitProgram {
  final List<HabitDay> habitDays;
  final String name;
  final String description;
  final bool muatable;
  final String programStart;
  final String programEnd;

  const HabitProgram({
    required this.habitDays,
    required this.name,
    required this.description,
    required this.muatable,
    required this.programStart,
    required this.programEnd,
  });

  int programLength() {
    final dateFormat = DateFormat('M/d/yyyy');
    final startDays = dateFormat.parse(programStart);
    int difference = dateFormat.parse(programEnd).difference(startDays).inDays;
    return difference;
  }

  factory HabitProgram.base() {
    final weekdays = [1, 2, 3, 4, 5, 6, 7];
    return HabitProgram(
      habitDays: List.generate(
        weekdays.length,
        (index) => HabitDay(
          weekday: weekdays[index],
          habits: [],
        ),
      ),
      name: '',
      description: '',
      muatable: false,
      programStart: DateFormat.yMd().format(DateTime.now()),
      programEnd: DateFormat.yMd()
          .format(DateTime.now().add(const Duration(days: minProgramDuration))),
    );
  }

  HabitProgram copyWith({
    List<HabitDay>? habitDays,
    String? name,
    String? description,
    bool? muatable,
    String? programStart,
    String? programEnd,
  }) {
    return HabitProgram(
      habitDays: habitDays ?? this.habitDays,
      name: name ?? this.name,
      description: description ?? this.description,
      muatable: muatable ?? this.muatable,
      programStart: programStart ?? this.programStart,
      programEnd: programEnd ?? this.programEnd,
    );
  }
}
