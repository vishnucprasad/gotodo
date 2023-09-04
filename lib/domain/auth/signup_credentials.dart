import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failure.dart';
import '../core/value_objects.dart';
part 'signup_credentials.freezed.dart';

@freezed
class SignupCredentials with _$SignupCredentials {
  const SignupCredentials._();
  const factory SignupCredentials({
    required Name name,
    required EmailAddress emailAddress,
    required Password password,
  }) = _SignupCredentials;

  factory SignupCredentials.empty() {
    return SignupCredentials(
      name: Name(""),
      emailAddress: EmailAddress(""),
      password: Password(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
