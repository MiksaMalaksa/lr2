
import '../lib/init_dependencies.dart';
import '../lib/src/habits/data/models/habit_program_model.dart';


import '../lib/src/habits/domain/usecases/get_program_usecase.dart';

Future<void> main() async {
  await initialise();
  final filePath = 'bin/core/data_test/program.json';

  final getProgram = sl<GetProgram>();

  final result = await getProgram(filePath);

  result.fold(
    (failure) => print('Ошибка при создании программы привычек: $failure'),
    (stringi) {
      final program = HabitProgramModel.fromJson(stringi);
      print('Программа привычек успешно создана.');
    },
  );

  // final createProgram = sl<CreateProgram>();

  // final createProgramParams =
  //     CreateProgramParams(program: habitProgram, path: filePath);

  // final result = await createProgram(createProgramParams);

  // result.fold(
  //   (failure) => print('Ошибка при создании программы привычек: $failure'),
  //   (_) => print('Программа привычек успешно создана.'),
  // );
}
