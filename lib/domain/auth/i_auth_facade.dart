import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/auth/signin_credentials.dart';
import 'package:gotodo/domain/auth/signup_credentials.dart';
import 'package:gotodo/domain/auth/tokens.dart';
import 'package:gotodo/domain/core/failure.dart';

abstract class IAuthFacade {
  Future<Either<Failure, Unit>> retriveUser();
  Future<Either<Failure, Tokens>> signinWithCredentials(
    SigninCredentials credentials,
  );
  Future<Either<Failure, Tokens>> signupWithCredentials(
    SignupCredentials credentials,
  );
  Future<void> saveTokens(Tokens tokens);
  Future<Either<Failure, Tokens>> getTokens();
  Future<void> removeTokens();
}
