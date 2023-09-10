import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/todo.dart';

abstract class ITodoRepo {
  Future<Either<Failure, List<Category>>> getCategoryList();
  Future<Either<Failure, List<List<Todo>?>>> getTodoList(List<Day> dateList);
}
