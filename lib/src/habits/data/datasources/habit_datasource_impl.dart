
import 'dart:io';

import 'package:habita_on_discount/core/enums/types.dart';

import '../../domain/entities/habit_program.dart';
import '../models/habit_program_model.dart';
import 'ihabit_datasource.dart';

class HabitDataSourceImpl implements IHabitDataSource {
  const HabitDataSourceImpl();

  @override
  Future<void> createHabitProgram({
    required HabitProgram program,
    required String path,
  }) async {
    final jsonProgram = HabitProgramModel.fromEntity(program).toJson();
    final file = File(path);

    if (!await file.exists()) {
      await file.create(recursive: true);
    }

    await file.writeAsString(jsonProgram, flush: true);
    print('All good');
  }

  @override
  Future<void> deleteHabitProgram({required String path}) async {
    final file = File(path);

    if (await file.exists()) {
      final raf = await file.open(mode: FileMode.write);
      await raf.truncate(0);
      await raf.close();
      print('cleared');
    } else {
      print('No such file');
    }
  }

  @override
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
  }) async {
      final file = File(path);
   try {
      if (await file.exists()) {
        final contents = await file.readAsString();
        print('Have been readed');
        return;
      } else {
        print('No such');
        return;
      }
    } catch (e) {
      print('Error occured: $e');
      rethrow;
    }
  }
  


  @override
  Future<String> getHabitProgram({required String path}) async {
    final file = File(path);

    try {
      if (await file.exists()) {
        final contents = await file.readAsString();
        print('Have been readed');
        return contents;
      } else {
        print('No such');
        return '';
      }
    } catch (e) {
      print('Error occured: $e');
      return '';
    }
  }
}