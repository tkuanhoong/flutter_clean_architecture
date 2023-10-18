import 'package:flutter_clean_architecture/features/todo_list/domain/entites/Todo.dart';

class TodoModel extends TodoEntity {
  const TodoModel({String? title, String? description});

  factory TodoModel.fromJson(Map<String, dynamic> map) => TodoModel(
      title: map['title'] ?? "", description: map['description'] ?? "");
}
