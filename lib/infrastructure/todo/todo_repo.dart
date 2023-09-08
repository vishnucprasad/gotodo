import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/infrastructure/todo/temp.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ITodoRepo)
class TodoRepo implements ITodoRepo {
  @override
  Future<Either<Failure, List<List<Todo>?>>> getTodoList(
    List<Day> dateList,
  ) async {
    try {
      final List<Todo> todos = todoListJson.map((result) {
        return Todo.fromJson(result);
      }).toList();

      final todoGroupedByDate = groupBy(todos, (todo) => todo.date.day);

      final List<List<Todo>?> todoList = List.generate(
        dateList.length,
        (index) => todoGroupedByDate[dateList[index].date],
      );

      return right(todoList);
    } catch (_) {
      return left(const Failure.clientFailure('Something went wrong'));
    }
  }
}
