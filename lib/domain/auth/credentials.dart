import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_failure.dart';
import '../core/value_objects.dart';
part 'credentials.freezed.dart';

@freezed
class Credentials with _$Credentials {
  const Credentials._();
  const factory Credentials({
    required Name name,
    required EmailAddress emailAddress,
  }) = _Credentials;

  factory Credentials.empty() {
    return Credentials(
      name: Name(""),
      emailAddress: EmailAddress(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
