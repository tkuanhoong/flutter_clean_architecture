import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/entites/Todo.dart';

abstract class TodoRepository{
  Future<DataState<List<TodoEntity>>> getTodos();
}