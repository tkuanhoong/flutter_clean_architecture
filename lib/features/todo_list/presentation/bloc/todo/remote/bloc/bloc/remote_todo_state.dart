part of 'remote_todo_bloc.dart';

abstract class RemoteTodoState extends Equatable {
  final List<TodoEntity>? todos;
  final DioException? error;
  const RemoteTodoState({this.todos, this.error});

  @override
  List<Object> get props => [todos!, error!];
}

class RemoteTodosLoading extends RemoteTodoState {
  const RemoteTodosLoading();
}

class RemoteTodosDone extends RemoteTodoState {
  const RemoteTodosDone(List<TodoEntity> todo) : super(todos: todo);
}

class RemoteTodosError extends RemoteTodoState {
  const RemoteTodosError(DioException error) : super(error: error);
}
