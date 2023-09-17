import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/category_data.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_data.dart';
import 'package:gotodo/domain/todo/todo_status.dart';

abstract class ITodoRepo {
  Future<Either<Failure, List<Category>>> getCategoryList(String accessToken);
  Future<Either<Failure, List<List<Todo>?>>> getTodoList(
    List<Day> dateList,
    String accessToken,
  );
  Future<Either<Failure, Category>> createCategory(
    CategoryData categoryData,
    String accessToken,
  );
  Future<Either<Failure, String>> deleteCategory(
    String categoryId,
    String accessToken,
  );
  Future<Either<Failure, Category>> editCategory(
    String categoryId,
    CategoryData categoryData,
    String accessToken,
  );
  Future<Either<Failure, Todo>> createTodo(
    TodoData todoData,
    String accessToken,
  );
  Future<Either<Failure, Todo>> editTodo(
    String todoId,
    TodoData todoData,
    String accessToken,
  );
  Future<Either<Failure, String>> deleteTodo(
    String todoId,
    String accessToken,
  );
  Future<Either<Failure, String>> changeTodoStatus(
    String todoId,
    TodoStatus status,
    String accessToken,
  );
}
