import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/features/todo_list/data/data_sources/remote/todos_api_service.dart';
import 'package:flutter_clean_architecture/features/todo_list/data/repository/todo_repository_impl.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/repository/todo_repository.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/usecases/get_todo.dart';
import 'package:flutter_clean_architecture/features/todo_list/presentation/bloc/todo/remote/bloc/bloc/remote_todo_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Dio
  sl.registerSingleton<Dio>(Dio());

  // Dependencies
  sl.registerSingleton<TodosApiService>(TodosApiService(sl()));

  sl.registerSingleton<TodoRepository>(TodoRepositoryImpl(sl()));

  // Usecases
  sl.registerSingleton<GetTodoUseCase>(GetTodoUseCase(sl()));

  // Blocs
  sl.registerFactory<RemoteTodoBloc>(() => RemoteTodoBloc(sl()));
}
