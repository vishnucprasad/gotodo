import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/api_endpoints.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/category_data.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@Injectable(as: ITodoRepo)
class TodoRepo implements ITodoRepo {
  @override
  Future<Either<Failure, List<Category>>> getCategoryList(
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.get(ApiEndpoints.getCategories);

      if (response.statusCode == 200) {
        final List<Category> categoryList = response.data.length != 0
            ? (response.data as List).map((result) {
                return Category.fromJson(result);
              }).toList()
            : [];

        return right(categoryList);
      }

      return left(const Failure.clientFailure('Something went wrong'));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 401) {
        return left(const Failure.tokenFailure(TokenType.accessToken));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 403 ||
          e.response?.statusCode == 500) {
        final message = e.response?.data?['message'];
        return left(Failure.serverFailure(
          message is List ? message[0] : message,
        ));
      }

      return left(const Failure.serverFailure(
        'Something went wrong on the server side',
      ));
    } catch (_) {
      return left(const Failure.clientFailure('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, List<List<Todo>?>>> getTodoList(
    List<Day> dateList,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final fromDate = dateList[0].dateTime.toIso8601String();
      final toDate = dateList[6].dateTime.toIso8601String();

      final response =
          await dio.get('${ApiEndpoints.getTodos}?from=$fromDate&to=$toDate');

      if (response.statusCode == 200) {
        final List<Todo> todos = response.data.length != 0
            ? response.data.map((result) {
                return Todo.fromJson(result);
              }).toList()
            : [];

        final todoGroupedByDate = groupBy(
          todos,
          (todo) => DateFormat.yMd().format(todo.date),
        );

        final List<List<Todo>?> todoList = List.generate(
          dateList.length,
          (index) => todoGroupedByDate[DateFormat.yMd().format(
            dateList[index].dateTime,
          )],
        );

        return right(todoList);
      }

      return left(const Failure.clientFailure('Something went wrong'));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 401) {
        return left(const Failure.tokenFailure(TokenType.accessToken));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 403 ||
          e.response?.statusCode == 500) {
        final message = e.response?.data?['message'];
        return left(Failure.serverFailure(
          message is List ? message[0] : message,
        ));
      }

      return left(const Failure.serverFailure(
        'Something went wrong on the server side',
      ));
    } catch (_) {
      return left(const Failure.clientFailure('Something went wrong'));
    }
  }

  @override
  Future<Either<Failure, Category>> createCategory(
    CategoryData categoryData,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.post(ApiEndpoints.createCategory, data: {
        "name": categoryData.categoryName.getOrCrash(),
        "color": categoryData.colorString,
      });

      if (response.statusCode == 201) {
        final category = Category.fromJson(response.data);
        return right(category);
      }

      return left(const Failure.clientFailure('Something went wrong'));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 401) {
        return left(const Failure.tokenFailure(TokenType.accessToken));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 403 ||
          e.response?.statusCode == 500) {
        final message = e.response?.data?['message'];
        return left(Failure.serverFailure(
          message is List ? message[0] : message,
        ));
      }

      return left(const Failure.serverFailure(
        'Something went wrong on the server side',
      ));
    } catch (_) {
      return left(const Failure.clientFailure('Something went wrong'));
    }
  }
}
