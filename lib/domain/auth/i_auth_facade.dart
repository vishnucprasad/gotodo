import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/auth/signin_credentials.dart';
import 'package:gotodo/domain/auth/signup_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/auth/user.dart';
import 'package:gotodo/domain/core/failure.dart';

abstract class IAuthFacade {
  Future<Either<Failure, User>> retriveUser(String accessToken);
  Future<Either<Failure, Tokens>> signinWithCredentials(
    SigninCredentials credentials,
  );
  Future<Either<Failure, Tokens>> signupWithCredentials(
    SignupCredentials credentials,
  );
  Future<Either<Failure, Tokens>> refreshToken(String refreshToken);
  Future<Option<Failure>> signout(String accessToken);
  Future<void> saveTokens(Tokens tokens);
  Option<Tokens> getTokens();
  Future<void> removeTokens();
}
