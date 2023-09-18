import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gotodo/domain/app/day.dart';
import 'package:gotodo/domain/core/api_endpoints.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/statistics/date_range.dart';
import 'package:gotodo/domain/todo/category.dart';
import 'package:gotodo/domain/todo/category_data.dart';
import 'package:gotodo/domain/todo/i_todo_repo.dart';
import 'package:gotodo/domain/todo/todo.dart';
import 'package:gotodo/domain/todo/todo_data.dart';
import 'package:gotodo/domain/todo/todo_status.dart';
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
  Future<Either<Failure, List<Todo>>> getTodoListByDateRange(
    DateRange dateRange,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final fromDate = dateRange.fromDate.toIso8601String();
      final toDate = dateRange.toDate.toIso8601String();

      final response =
          await dio.get('${ApiEndpoints.getTodos}?from=$fromDate&to=$toDate');

      if (response.statusCode == 200) {
        final List<Todo> todoList = response.data.length != 0
            ? (response.data as List).map((result) {
                return Todo.fromJson(result);
              }).toList()
            : [];

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
  Future<Either<Failure, List<List<Todo>?>>> getTodoList(
    List<Day> dateList,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final fromDate = dateList[0].dateTime.toIso8601String();
      final toDate = dateList[6]
          .dateTime
          .add(const Duration(days: 1))
          .subtract(const Duration(seconds: 1))
          .toIso8601String();

      final response =
          await dio.get('${ApiEndpoints.getTodos}?from=$fromDate&to=$toDate');

      if (response.statusCode == 200) {
        final List<Todo> todos = response.data.length != 0
            ? (response.data as List).map((result) {
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

  @override
  Future<Either<Failure, String>> deleteCategory(
    String categoryId,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.delete(
        '${ApiEndpoints.deleteCategory}/$categoryId',
      );

      if (response.statusCode == 204) {
        return right(categoryId);
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
  Future<Either<Failure, Category>> editCategory(
    String categoryId,
    CategoryData categoryData,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.patch(
        '${ApiEndpoints.editCategory}/$categoryId',
        data: {
          "name": categoryData.categoryName.getOrCrash(),
          "color": categoryData.colorString,
        },
      );

      if (response.statusCode == 200) {
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

  @override
  Future<Either<Failure, Todo>> createTodo(
    TodoData todoData,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final Map<String, String?> data = {
        "categoryId": todoData.category?.id,
        "task": todoData.task.getOrCrash(),
        "date": todoData.date.toIso8601String(),
        "description": todoData.description,
      };

      final response = await dio.post(
        ApiEndpoints.createTodo,
        data: data..removeWhere((key, value) => value == null),
      );

      if (response.statusCode == 201) {
        final todo = Todo.fromJson(response.data);
        return todoData.category != null
            ? right(todo.copyWith(category: todoData.category))
            : right(todo);
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
  Future<Either<Failure, Todo>> editTodo(
    String todoId,
    TodoData todoData,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.patch(
        '${ApiEndpoints.editTodo}/$todoId',
        data: {
          "categoryId": todoData.category?.id,
          "task": todoData.task.getOrCrash(),
          "date": todoData.date.toIso8601String(),
          "description": (todoData.description ?? "").isEmpty
              ? null
              : todoData.description,
        },
      );

      if (response.statusCode == 200) {
        final todo = Todo.fromJson(response.data);
        return todoData.category != null
            ? right(todo.copyWith(category: todoData.category))
            : right(todo);
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
  Future<Either<Failure, String>> deleteTodo(
    String todoId,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.delete(
        '${ApiEndpoints.deleteTodo}/$todoId',
      );

      if (response.statusCode == 204) {
        return right(todoId);
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
  Future<Either<Failure, String>> changeTodoStatus(
    String todoId,
    TodoStatus status,
    String accessToken,
  ) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers['Authorization'] = 'Bearer $accessToken';

      final response = await dio.patch(
        '${ApiEndpoints.changeStatus}/$todoId',
        data: {
          "status": status.name,
        },
      );

      if (response.statusCode == 200) {
        return right(todoId);
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
