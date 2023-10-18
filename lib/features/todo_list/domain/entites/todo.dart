import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String? title;
  final String? description;
  const TodoEntity({
    this.title,
    this.description,
  });

  @override
  List<Object?> get props => [title, description];
}
