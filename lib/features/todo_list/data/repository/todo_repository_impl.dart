import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/features/todo_list/data/data_sources/remote/todos_api_service.dart';
import 'package:flutter_clean_architecture/features/todo_list/data/models/todo.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/entites/Todo.dart';
import 'package:flutter_clean_architecture/features/todo_list/domain/repository/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodosApiService _todosApiService;
  const TodoRepositoryImpl(this._todosApiService);
  @override
  Future<DataState<List<TodoModel>>> getTodos() async {
    try {
      final httpResponse = await _todosApiService.getTodos();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
          error: httpResponse.response.statusMessage,
          response: httpResponse.response,
          type: DioExceptionType.badResponse,
          requestOptions: httpResponse.response.requestOptions,
        ));
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
