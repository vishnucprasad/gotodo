import 'package:dartz/dartz.dart';
import 'package:gotodo/domain/core/value_failure.dart';
import 'package:gotodo/domain/core/value_objects.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassWord(String input) {
  const passwordRegex =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$';
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validateConfirmationPassWord(
  String input,
  Password password,
) {
  const passwordRegex =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,}$';
  if (!RegExp(passwordRegex).hasMatch(input)) {
    return left(ValueFailure.invalid(failedValue: input));
  }
  return password.value.fold(
    (l) => left(ValueFailure.invalid(failedValue: input)),
    (r) {
      if (input == r) {
        return right(input);
      }

      return left(ValueFailure.invalid(failedValue: input));
    },
  );
}

Either<ValueFailure<String>, String> validateName(String input) {
  const nameRegex = r'^[a-zA-Z\s]{3,20}$';
  if (RegExp(nameRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalid(failedValue: input));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.empty(failedValue: input));
}
