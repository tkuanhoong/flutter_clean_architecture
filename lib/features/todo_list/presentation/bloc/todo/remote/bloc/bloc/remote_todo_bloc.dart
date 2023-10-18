import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/entites/Todo.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/usecases/get_todo.dart';

part 'remote_todo_event.dart';
part 'remote_todo_state.dart';

class RemoteTodoBloc extends Bloc<RemoteTodoEvent, RemoteTodoState> {
  final GetTodoUseCase _getTodoUseCase;
  RemoteTodoBloc(this._getTodoUseCase) : super(const RemoteTodosLoading()) {
    on<GetTodos>(onGetTodos);
  }
  void onGetTodos(GetTodos event, Emitter<RemoteTodoState> emit) async {
    final dataState = await _getTodoUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteTodosDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteTodosError(dataState.error!));
    }
  }
}
