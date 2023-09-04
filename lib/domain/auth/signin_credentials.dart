import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failure.dart';
import '../core/value_objects.dart';
part 'signin_credentials.freezed.dart';

@freezed
class SigninCredentials with _$SigninCredentials {
  const SigninCredentials._();
  const factory SigninCredentials({
    required EmailAddress emailAddress,
    required Password password,
  }) = _SigninCredentials;

  factory SigninCredentials.empty() {
    return SigninCredentials(
      emailAddress: EmailAddress(""),
      password: Password(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return emailAddress.failureOrUnit
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
