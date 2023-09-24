import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gotodo/domain/core/value_failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';

part 'passwords.freezed.dart';

@freezed
class Passwords with _$Passwords {
  const Passwords._();
  const factory Passwords({
    required Password currentPassword,
    required Password newPassword,
    required ConfirmationPassword confirmationPassword,
  }) = _Passwords;

  factory Passwords.empty() {
    return Passwords(
      currentPassword: Password(""),
      newPassword: Password(""),
      confirmationPassword: ConfirmationPassword("", Password("")),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return currentPassword.failureOrUnit
        .andThen(newPassword.failureOrUnit)
        .andThen(confirmationPassword.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
