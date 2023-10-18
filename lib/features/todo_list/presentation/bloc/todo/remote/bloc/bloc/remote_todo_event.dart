part of 'remote_todo_bloc.dart';

abstract class RemoteTodoEvent extends Equatable {
  const RemoteTodoEvent();

  @override
  List<Object> get props => [];
}

class GetTodos extends RemoteTodoEvent {
  const GetTodos();
}
