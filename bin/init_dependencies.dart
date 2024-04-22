import 'package:get_it/get_it.dart';

import 'src/habits/data/datasources/habit_datasource_impl.dart';
import 'src/habits/data/datasources/ihabit_datasource.dart';
import 'src/habits/data/repositories/habit_repo_impl.dart';
import 'src/habits/domain/repositories/ihabit_repo.dart';
import 'src/habits/domain/usecases/create_program_usecase.dart';
import 'src/habits/domain/usecases/delete_program_usecase.dart';
import 'src/habits/domain/usecases/edit_program_usecase.dart';
import 'src/habits/domain/usecases/get_program_usecase.dart';

final sl = GetIt.instance;

Future<void> initialise() async {
  //!Features
  _initHabit();
}

void _initHabit() {
  sl.registerSingleton<IHabitDataSource>(HabitDataSourceImpl());
  sl.registerSingleton<IHabitRepo>(
    HabitRepoImpl(habitDataSource: sl()),
  );
  //*usecases
  sl.registerSingleton<DeleteProgram>(DeleteProgram(repository: sl()));
  sl.registerSingleton<EditProgram>(EditProgram(repository: sl()));
  sl.registerSingleton<GetProgram>(GetProgram(repository: sl()));
  sl.registerSingleton<CreateProgram>(CreateProgram(repository: sl()));
}
