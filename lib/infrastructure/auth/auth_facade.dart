import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/signin_credentials.dart';
import 'package:gotodo/domain/auth/signup_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:gotodo/domain/core/api_endpoints.dart';
import 'package:gotodo/domain/core/constants.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/keys.dart';
import 'package:gotodo/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: IAuthFacade)
@prod
class AuthFacade implements IAuthFacade {
  @override
  Future<Either<Failure, User>> retriveUser(String accessToken) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers["Authorization"] = "Bearer $accessToken";

      final response = await dio.get(ApiEndpoints.retriveUser);

      if (response.statusCode == 200) {
        final user = User.fromJson(response.data);
        return right(user);
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
  Future<Either<Failure, Tokens>> signinWithCredentials(
    SigninCredentials credentials,
  ) async {
    try {
      final response = await getIt<Dio>().post(ApiEndpoints.signin, data: {
        "email": credentials.emailAddress.getOrCrash(),
        "password": credentials.password.getOrCrash(),
      });

      if (response.statusCode == 200) {
        final tokens = Tokens.fromJson(response.data);
        return right(tokens);
      }

      return left(const Failure.clientFailure(
        'Something went wrong, please try again',
      ));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 401 ||
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
      return left(const Failure.clientFailure(
        'Something went wrong, please try again',
      ));
    }
  }

  @override
  Future<Either<Failure, Tokens>> signupWithCredentials(
    SignupCredentials credentials,
  ) async {
    try {
      final response = await getIt<Dio>().post(ApiEndpoints.signup, data: {
        "name": credentials.name.getOrCrash(),
        "email": credentials.emailAddress.getOrCrash(),
        "password": credentials.password.getOrCrash(),
      });

      if (response.statusCode == 201) {
        final tokens = Tokens.fromJson(response.data);
        return right(tokens);
      }

      return left(const Failure.clientFailure(
        'Something went wrong, please try again',
      ));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 401 ||
          e.response?.statusCode == 403 ||
          e.response?.statusCode == 500) {
        final message = e.response?.data?['message'];
        return left(Failure.serverFailure(
          message is List ? message[0] : message,
        ));
      }

      return left(
        const Failure.serverFailure(
          "Something went wrong on the server side",
        ),
      );
    } catch (_) {
      return left(
        const Failure.clientFailure(
          "Something went wrong, please try again",
        ),
      );
    }
  }

  @override
  Future<Either<Failure, Tokens>> refreshToken(String refreshToken) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers["Authorization"] = 'Bearer $refreshToken';

      final response = await dio.post(ApiEndpoints.refreshToken);

      if (response.statusCode == 201) {
        final tokens = Tokens.fromJson(response.data);
        return right(tokens);
      }

      return left(const Failure.clientFailure('Something went wrong'));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return left(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        return left(const Failure.tokenFailure(TokenType.refreshToken));
      }

      if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
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
  Future<Option<Failure>> signout(String accessToken) async {
    try {
      final dio = getIt<Dio>();
      dio.options.headers["Authorization"] = "Bearer $accessToken";

      final response = await dio.delete(ApiEndpoints.signout);
      if (response.statusCode == 204) {
        return none();
      }

      return some(const Failure.clientFailure('Something went wrong'));
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return some(const Failure.serverFailure('Connection timeout'));
      }

      if (e.response?.statusCode == 401) {
        return some(const Failure.tokenFailure(TokenType.accessToken));
      }

      if (e.response?.statusCode == 400 ||
          e.response?.statusCode == 403 ||
          e.response?.statusCode == 500) {
        final message = e.response?.data?['message'];
        return some(Failure.serverFailure(
          message is List ? message[0] : message,
        ));
      }

      return some(const Failure.serverFailure(
          'Something went wrong on the server side'));
    } catch (_) {
      return some(const Failure.clientFailure('Something went wrong'));
    }
  }

  @override
  Future<void> saveTokens(Tokens tokens) async {
    await getIt<SharedPreferences>().setString(
      AppKeys.accessTokenKey,
      tokens.accessToken,
    );
    await getIt<SharedPreferences>().setString(
      AppKeys.refreshTokenKey,
      tokens.refreshToken,
    );
  }

  @override
  Option<Tokens> getTokens() {
    final accessToken = getIt<SharedPreferences>().getString(
      AppKeys.accessTokenKey,
    );
    final refreshToken = getIt<SharedPreferences>().getString(
      AppKeys.refreshTokenKey,
    );

    bool isValid(String? value) => value != null && value.isNotEmpty;

    return isValid(accessToken) && isValid(refreshToken)
        ? some(Tokens(accessToken!, refreshToken!))
        : none();
  }

  @override
  Future<void> removeTokens() async {
    await getIt<SharedPreferences>().remove(AppKeys.accessTokenKey);
    await getIt<SharedPreferences>().remove(AppKeys.refreshTokenKey);
  }
}
