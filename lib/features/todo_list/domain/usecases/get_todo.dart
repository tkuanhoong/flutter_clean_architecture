import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/core/usecases/usecase.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/entites/Todo.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/repository/todo_repository.dart';

class GetTodoUseCase implements UseCase<DataState<List<TodoEntity>>, void> {
  final TodoRepository _todoRepository;
  const GetTodoUseCase(this._todoRepository);
  @override
  Future<DataState<List<TodoEntity>>> call({void params}) {
    return _todoRepository.getTodos();
  }
}
