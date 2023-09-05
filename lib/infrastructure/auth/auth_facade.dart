import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gotodo/domain/auth/i_auth_facade.dart';
import 'package:gotodo/domain/auth/signin_credentials.dart';
import 'package:gotodo/domain/auth/signup_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/core/api_endpoints.dart';
import 'package:gotodo/domain/core/failure.dart';
import 'package:gotodo/domain/core/keys.dart';
import 'package:gotodo/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: IAuthFacade)
@prod
class AuthFacade implements IAuthFacade {
  @override
  Future<Either<Failure, Unit>> retriveUser() {
    // TODO: implement retriveUser
    throw UnimplementedError();
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
      print(e.response?.data.toString());
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
  Future<Either<Failure, Tokens>> getTokens() {
    // TODO: implement getTokens
    throw UnimplementedError();
  }

  @override
  Future<void> removeTokens() {
    // TODO: implement removeTokens
    throw UnimplementedError();
  }
}
