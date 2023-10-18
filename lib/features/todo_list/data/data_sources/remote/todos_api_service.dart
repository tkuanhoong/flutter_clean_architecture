import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/core/constants/constants.dart';
import 'package:flutter_clean_architecture/features/todo_list/data/models/todo.dart';
import 'package:retrofit/retrofit.dart';

part 'todos_api_service.g.dart';

@RestApi(baseUrl: todosAPIBaseURL)
abstract class TodosApiService {
  factory TodosApiService(Dio dio) = _TodosApiService;

  @GET('/documents/todos')
  Future<HttpResponse<List<TodoModel>>> getTodos();
  // @GET('/documents/todos')
  // Future<HttpResponse<List<TodoModel>>> getTodos({
  //   @Query("apiKey") String ? apiKey,
  //   @Query("country") String ? country,
  //   @Query("category") String ? category,
  // })
}
